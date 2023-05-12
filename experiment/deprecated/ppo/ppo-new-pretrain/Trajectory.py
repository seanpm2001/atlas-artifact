import random
import time

import torch
from PPO import PPO, RolloutBuffer

from quartz import PyGraph, QuartzContext


class Trajectory:
    def __init__(
        self,
        tid: int,
        init_circ_name: str,
        init_circ: PyGraph,
        init_circ_original_cnt: int,
        max_seq_len: int,
        invalid_reward: int,
    ) -> None:
        self.tid = tid
        self.init_circ_name = init_circ_name
        self.init_circ = init_circ
        self.init_gate_cnt = init_circ_original_cnt
        self.max_seq_len = max_seq_len
        self.invalid_reward = invalid_reward
        self.rollout_buffer = RolloutBuffer()

        self.current_circ = init_circ

        self.done = False
        self.is_nop = False

        self.t_best_reward = 0
        self.t_best_gate_cnt = self.init_gate_cnt
        self.t_gate_cnt = self.init_gate_cnt
        self.t_best_circ = init_circ
        self.t_len = 0

        self.intermediate_circ_buffer = {}
        self.intermediate_circ_buffer['circ'] = []
        self.intermediate_circ_buffer['hash'] = []

    def reset_nop(self):
        self.is_nop = False

    def not_done(self):
        return not self.done

    def apply_action_and_record(
        self,
        context: QuartzContext,
        node: int,
        xfer: int,
        xfer_logprob: torch.Tensor,
        mask: torch.Tensor,
    ):
        # start = time.time()
        next_circ, next_nodes = self.current_circ.apply_xfer_with_local_state_tracking(
            xfer=context.get_xfer_from_id(id=xfer),
            node=self.current_circ.get_node_from_id(id=node),
            eliminate_rotation=True,
        )
        # t_0 = time.time()
        # print(f'action time: {t_0 - start}')

        # Update states
        # Update t_len
        self.t_len += 1

        # Update is_nop
        if context.get_xfer_from_id(id=xfer).is_nop:
            self.is_nop = True
        else:
            self.is_nop = False

        # Update done
        # Invalid xfers
        if next_circ == None:
            self.done = True
        # Upper limit for sequence length is reached
        elif self.t_len == self.max_seq_len:
            self.done = True
        # NOP
        elif self.is_nop:
            self.done = True
        # Gate count too large
        elif next_circ.gate_count > self.init_gate_cnt * 1.1:
            self.done = True

        # Reward
        reward: int = 0
        if self.current_circ == None:
            reward = self.invalid_reward
        elif self.is_nop:
            reward = 0
        else:
            # reward = (self.current_circ.gate_count - next_circ.gate_count) * 5
            reward = self.current_circ.gate_count - next_circ.gate_count
        self.t_reward += reward

        reward: torch.Tensor = torch.tensor(reward)

        # Update rollout_buffer
        self.rollout_buffer.graphs.append(self.current_circ)
        self.rollout_buffer.nodes.append(node)
        self.rollout_buffer.xfers.append(xfer)
        self.rollout_buffer.xfer_logprobs.append(xfer_logprob)  # torch.Tensor
        self.rollout_buffer.masks.append(mask)  # torch.Tensor
        self.rollout_buffer.next_graphs.append(next_circ)
        self.rollout_buffer.next_nodes.append(next_nodes)
        self.rollout_buffer.rewards.append(reward)
        self.rollout_buffer.is_nops.append(self.is_nop)
        self.rollout_buffer.is_terminals.append(self.done)
        self.rollout_buffer.is_start_point.append(self.t_len == 1)

        # Update intermediate graphs buffer
        if self.t_reward >= 0:
            self.intermediate_circ_buffer['circ'].append(next_circ)
            self.intermediate_circ_buffer['hash'].append(next_circ.hash())

        # Update trajectory best gate count
        if next_circ != None and next_circ.gate_count < self.t_best_gate_cnt:
            self.t_best_gate_cnt = next_circ.gate_count
            self.t_best_circ = next_circ

        # Update trajectory gate count
        if self.done:
            if next_circ != None:
                self.t_gate_cnt = next_circ.gate_count
            else:
                self.t_gate_cnt = self.current_circ.gate_count

        # Update current_circ
        self.current_circ = next_circ


def sample_init_circs(
    circ_info: dict,
    circ_dataset: dict,
    circ_names: list,
    num_each_circ: int,
    keep_origin: bool = True,
) -> list:

    pass


def get_trajectory_batch(
    ppo_agent: PPO,
    context: QuartzContext,
    sampled_init_circs: list,
    max_seq_len: int,
    invalid_reward: int,
):
    trajectory_list: list[Trajectory] = []
    for i, circ_info in enumerate(sampled_init_circs):
        trajectory_list.append(Trajectory(i, *circ_info, max_seq_len, invalid_reward))

    for _ in range(max_seq_len):
        # start = time.time()
        undone_ts = {}
        undone_ts['id'] = []
        undone_ts['curr_circ'] = []

        # Collect circuits and node_range from each trajectories
        for trajectory in trajectory_list:
            if trajectory.not_done():

                undone_ts['id'].append(trajectory.tid)
                undone_ts['curr_circ'].append(trajectory.current_circ)

        if len(undone_ts['id']) == 0:
            break
        else:
            # t_1 = time.time()
            nodes, xfers, xfer_logprobs, masks = ppo_agent.select_actions(
                undone_ts['curr_circ']
            )
            # t_2 = time.time()
            # print(f'network time: {t_2 - t_1}')

            for i, id in enumerate(undone_ts['id']):
                trajectory_list[id].apply_action_and_record(
                    context, nodes[i], xfers[i], xfer_logprobs[i], masks[i].clone()
                )

        # t_0 = time.time()
        # print(f'time: {t_0 - start}')

    intermediate_circs = {}
    trajectory_infos = {}

    for trajectory in trajectory_list:
        # PPO rollout buffer
        ppo_agent.buffer += trajectory.rollout_buffer

        # Aggregate trajectory infos
        if trajectory.init_circ_name not in trajectory_infos:
            trajectory_infos[trajectory.init_circ_name] = {}
            trajectory_infos[trajectory.init_circ_name]['num'] = 1
            trajectory_infos[trajectory.init_circ_name]['seq_len'] = trajectory.t_len
            trajectory_infos[trajectory.init_circ_name]['reward'] = trajectory.t_reward
            trajectory_infos[trajectory.init_circ_name][
                'best_reward'
            ] = trajectory.t_reward
            trajectory_infos[trajectory.init_circ_name][
                'best_gate_cnt'
            ] = trajectory.t_best_gate_cnt
            trajectory_infos[trajectory.init_circ_name][
                'best_circ'
            ] = trajectory.t_best_circ
            trajectory_infos[trajectory.init_circ_name][
                'best_final_gate_cnt'
            ] = trajectory.t_gate_cnt
        else:
            trajectory_infos[trajectory.init_circ_name]['num'] += 1
            trajectory_infos[trajectory.init_circ_name]['seq_len'] += trajectory.t_len
            trajectory_infos[trajectory.init_circ_name]['reward'] += trajectory.t_reward
            trajectory_infos[trajectory.init_circ_name]['best_reward'] = max(
                trajectory.t_reward,
                trajectory_infos[trajectory.init_circ_name]['best_reward'],
            )
            if (
                trajectory.t_best_gate_cnt
                < trajectory_infos[trajectory.init_circ_name]['best_gate_cnt']
            ):
                trajectory_infos[trajectory.init_circ_name][
                    'best_gate_cnt'
                ] = trajectory.t_best_gate_cnt
                trajectory_infos[trajectory.init_circ_name][
                    'best_circ'
                ] = trajectory.t_best_circ
            trajectory_infos[trajectory.init_circ_name]['best_final_gate_cnt'] = min(
                trajectory.t_gate_cnt,
                trajectory_infos[trajectory.init_circ_name]['best_final_gate_cnt'],
            )

        # Gather intermediate circuits
        if trajectory.init_circ_name not in intermediate_circs:
            intermediate_circs[trajectory.init_circ_name] = {}
            intermediate_circs[trajectory.init_circ_name][
                'circ'
            ] = trajectory.intermediate_circ_buffer['circ']
            intermediate_circs[trajectory.init_circ_name][
                'hash'
            ] = trajectory.intermediate_circ_buffer['hash']
        else:
            intermediate_circs[trajectory.init_circ_name][
                'circ'
            ] += trajectory.intermediate_circ_buffer['circ']
            intermediate_circs[trajectory.init_circ_name][
                'hash'
            ] += trajectory.intermediate_circ_buffer['hash']

    for circ in trajectory_infos:
        trajectory_infos[circ]['avg_seq_len'] = (
            trajectory_infos[circ]['seq_len'] / trajectory_infos[circ]['num']
        )
        trajectory_infos[circ]['avg_reward'] = (
            trajectory_infos[circ]['reward'] / trajectory_infos[circ]['num']
        )

    return intermediate_circs, trajectory_infos


class TrajectoryBeam:
    def __init__(
        self,
        tid: int,
        init_circ_name: str,
        init_circ: PyGraph,
        init_circ_original_cnt: int,
        max_node_cnt: int,
        invalid_reward: int,
        k: int,
    ) -> None:
        self.tid = tid
        self.init_circ_name = init_circ_name
        self.init_circ = init_circ
        self.init_gate_cnt = init_circ_original_cnt
        self.max_node_cnt = max_node_cnt
        self.invalid_reward = invalid_reward
        self.rollout_buffer = RolloutBuffer()
        self.k = k

        self.current_circs: list[PyGraph] = [init_circ]
        self.current_hash_set: set = set([])
        self.current_circs_num = 1

        self.done = False

        self.t_best_reward = 0
        self.t_best_gate_cnt = self.init_gate_cnt
        self.t_best_circ = init_circ

        self.t_node_cnt = 1

        self.intermediate_circ_buffer = {}
        self.intermediate_circ_buffer['circ'] = []
        self.intermediate_circ_buffer['hash'] = []

    def not_done(self):
        return not self.done

    def apply_action_and_record(
        self,
        context: QuartzContext,
        circs: list[PyGraph],
        nodes: list[int],
        xfers: list[int],
        xfer_logprobs: list[torch.Tensor],
        masks: list[torch.Tensor],
    ):
        self.current_circs = []
        self.current_hash_set = set([])

        for i, (circ, node, xfer, xfer_logprob, mask) in enumerate(
            zip(circs, nodes, xfers, xfer_logprobs, masks)
        ):
            if self.done:
                break

            next_circ, next_nodes = circ.apply_xfer_with_local_state_tracking(
                xfer=context.get_xfer_from_id(id=xfer),
                node=circ.get_node_from_id(id=node),
                eliminate_rotation=True,
            )

            self.t_node_cnt += 1

            # Update is_nop
            is_nop: bool = context.get_xfer_from_id(id=xfer).is_nop

            done: bool = False
            if is_nop:
                done = True
            elif next_circ == None:
                done = True
            elif self.t_node_cnt == self.max_node_cnt:  # May change
                done = True
                self.done = True
            elif next_circ.gate_count > self.init_gate_cnt * 1.2:
                done = True

            # Reward
            reward: int = 0
            if next_circ == None:
                reward = self.invalid_reward
                print("none")
            elif is_nop:
                reward = 0
            else:
                reward = circ.gate_count - next_circ.gate_count

            reward: torch.Tensor = torch.tensor(reward)

            # Update rollout_buffer
            self.rollout_buffer.graphs.append(circ)
            self.rollout_buffer.nodes.append(node)
            self.rollout_buffer.xfers.append(xfer)
            self.rollout_buffer.xfer_logprobs.append(xfer_logprob)  # torch.Tensor
            self.rollout_buffer.masks.append(mask)  # torch.Tensor
            self.rollout_buffer.next_graphs.append(next_circ)
            self.rollout_buffer.next_nodes.append(next_nodes)
            self.rollout_buffer.rewards.append(reward)
            self.rollout_buffer.is_nops.append(is_nop)
            self.rollout_buffer.is_terminals.append(False)

            # Update intermediate graphs buffer
            if next_circ is not None and self.init_gate_cnt - next_circ.gate_count >= 0:
                self.intermediate_circ_buffer['circ'].append(next_circ)
                self.intermediate_circ_buffer['hash'].append(next_circ.hash())

            # Update trajectory best gate count
            if next_circ != None and next_circ.gate_count < self.t_best_gate_cnt:
                self.t_best_gate_cnt = next_circ.gate_count
                self.t_best_circ = next_circ
                self.t_best_reward = self.init_gate_cnt - self.t_best_gate_cnt

            if not done and next_circ.hash() not in self.current_hash_set:
                self.current_circs.append(next_circ)
                self.current_hash_set.add(next_circ.hash())

        self.current_circs_num = len(self.current_circs)

        if self.current_circs_num == 0:
            self.done = True


def get_trajectory_beam(
    ppo_agent: PPO,
    context: QuartzContext,
    sampled_init_circs: list,
    max_node_cnt: int,
    invalid_reward: int,
    k: int,
):
    trajectory_list: list[TrajectoryBeam] = []
    for i, circ_info in enumerate(sampled_init_circs):
        trajectory_list.append(
            TrajectoryBeam(i, *circ_info, max_node_cnt, invalid_reward, k)
        )

    for _ in range(max_node_cnt):
        # start = time.time()
        undone_ts = {}
        undone_ts['id']: list[int] = []
        undone_ts['curr_circs']: list[list[PyGraph]] = []
        undone_ts['curr_circ_num']: list[int] = []

        # Collect circuits and node_range from each trajectories
        for trajectory in trajectory_list:
            if trajectory.not_done():

                undone_ts['id'].append(trajectory.tid)
                undone_ts['curr_circs'].append(trajectory.current_circs)
                undone_ts['curr_circ_num'].append(trajectory.current_circs_num)

        if len(undone_ts['id']) == 0:
            print(_ + 1)
            break
        else:
            # circs, nodes, xfers, xfer_logprobs, masks = ppo_agent.select_actions(
            #     undone_ts['curr_circs'], k)

            # for i, id in enumerate(undone_ts['id']):
            #     trajectory_list[id].apply_action_and_record_beam(
            #         context, nodes[i], xfers[i], xfer_logprobs[i],
            #         masks[i].clone())
            # for id, curr_circs, curr_circ_num in zip(
            #         undone_ts['id'], undone_ts['curr_circs'],
            #         undone_ts['curr_circ_num']):
            #     circs, nodes, xfers, xfer_logprobs, masks = ppo_agent.select_actions_beam(
            #         curr_circs, k)

            #     trajectory_list[id].apply_action_and_record(
            #         context, circs, nodes, xfers, xfer_logprobs, masks)
            result_dict = ppo_agent.select_actions_beam(undone_ts, k)
            for id, data in result_dict.items():
                trajectory_list[id].apply_action_and_record(context, *data)

    intermediate_circs = {}
    trajectory_infos = {}

    for trajectory in trajectory_list:
        # PPO rollout buffer
        ppo_agent.buffer += trajectory.rollout_buffer

        # Aggregate trajectory infos
        if trajectory.init_circ_name not in trajectory_infos:
            trajectory_infos[trajectory.init_circ_name] = {}
            trajectory_infos[trajectory.init_circ_name]['num'] = 1
            trajectory_infos[trajectory.init_circ_name][
                'best_reward'
            ] = trajectory.t_best_reward
            trajectory_infos[trajectory.init_circ_name][
                'best_gate_cnt'
            ] = trajectory.t_best_gate_cnt
            trajectory_infos[trajectory.init_circ_name][
                'best_circ'
            ] = trajectory.t_best_circ
            trajectory_infos[trajectory.init_circ_name][
                'avg_node_cnt'
            ] = trajectory.t_node_cnt
        else:
            trajectory_infos[trajectory.init_circ_name]['num'] += 1
            trajectory_infos[trajectory.init_circ_name]['best_reward'] = max(
                trajectory.t_best_reward,
                trajectory_infos[trajectory.init_circ_name]['best_reward'],
            )
            if (
                trajectory.t_best_gate_cnt
                < trajectory_infos[trajectory.init_circ_name]['best_gate_cnt']
            ):
                trajectory_infos[trajectory.init_circ_name][
                    'best_gate_cnt'
                ] = trajectory.t_best_gate_cnt
                trajectory_infos[trajectory.init_circ_name][
                    'best_circ'
                ] = trajectory.t_best_circ
            trajectory_infos[trajectory.init_circ_name][
                'avg_node_cnt'
            ] += trajectory.t_node_cnt

        # Gather intermediate circuits
        if trajectory.init_circ_name not in intermediate_circs:
            intermediate_circs[trajectory.init_circ_name] = {}
            intermediate_circs[trajectory.init_circ_name][
                'circ'
            ] = trajectory.intermediate_circ_buffer['circ']
            intermediate_circs[trajectory.init_circ_name][
                'hash'
            ] = trajectory.intermediate_circ_buffer['hash']
        else:
            intermediate_circs[trajectory.init_circ_name][
                'circ'
            ] += trajectory.intermediate_circ_buffer['circ']
            intermediate_circs[trajectory.init_circ_name][
                'hash'
            ] += trajectory.intermediate_circ_buffer['hash']

    for circ in trajectory_infos:
        trajectory_infos[circ]['avg_node_cnt'] = (
            trajectory_infos[circ]['avg_node_cnt'] / trajectory_infos[circ]['num']
        )
    #     trajectory_infos[circ]['avg_reward'] = trajectory_infos[circ][
    #         'reward'] / trajectory_infos[circ]['num']

    return intermediate_circs, trajectory_infos


class SplitCircuitTrajectory:
    def __init__(
        self,
        tid: int,
        context: QuartzContext,
        init_circ_name: str,
        init_circ: PyGraph,
        init_circ_original_cnt: int,
        max_seq_len: int,
        invalid_reward: int,
    ) -> None:
        self.tid = tid
        self.context = context
        self.init_circ_name = init_circ_name
        # self.init_circ = init_circ
        (
            self.init_circ,
            self.rest_gate_cnt,
            self.first_piece,
            self.third_piece,
        ) = self.sample_circuit(init_circ)
        self.init_gate_cnt = init_circ_original_cnt
        self.max_seq_len = max_seq_len
        self.invalid_reward = invalid_reward
        self.rollout_buffer = RolloutBuffer()

        self.current_circ = self.init_circ

        self.done = False
        self.is_nop = False

        self.t_reward = 0
        self.t_best_gate_cnt = self.init_gate_cnt
        self.t_gate_cnt = self.init_gate_cnt
        self.t_best_circ = self.init_circ
        self.t_len = 0

        self.intermediate_circ_buffer = {}
        self.intermediate_circ_buffer['circ'] = []
        self.intermediate_circ_buffer['hash'] = []

    def sample_circuit(self, circ: PyGraph):
        new_circ: PyGraph = None
        if circ.gate_count > 400:
            qasm_str = circ.to_qasm_str()
            qasm_strs = qasm_str.split("\n")
            start_line_num = random.randint(4, len(qasm_strs) - 401)
            new_qasm_strs = (
                qasm_strs[:3] + qasm_strs[start_line_num : start_line_num + 400]
            )
            new_qasm_str = "\n".join(new_qasm_strs)
            new_circ = PyGraph.from_qasm_str(
                context=self.context, qasm_str=new_qasm_str
            )
            first_piece = "\n".join(qasm_strs[:start_line_num])
            third_piece = "\n".join(qasm_strs[start_line_num + 400 :])
            return new_circ, circ.gate_count - 400, first_piece, third_piece

    def reset_nop(self):
        self.is_nop = False

    def not_done(self):
        return not self.done

    def apply_action_and_record(
        self,
        context: QuartzContext,
        node: int,
        xfer: int,
        xfer_logprob: torch.Tensor,
        mask: torch.Tensor,
    ):
        # start = time.time()
        next_circ, next_nodes = self.current_circ.apply_xfer_with_local_state_tracking(
            xfer=context.get_xfer_from_id(id=xfer),
            node=self.current_circ.get_node_from_id(id=node),
            eliminate_rotation=True,
        )
        # t_0 = time.time()
        # print(f'action time: {t_0 - start}')

        # Update states
        # Update t_len
        self.t_len += 1

        # Update is_nop
        if context.get_xfer_from_id(id=xfer).is_nop:
            self.is_nop = True
        else:
            self.is_nop = False

        # Update done
        # Invalid xfers
        if next_circ == None:
            self.done = True
        # Upper limit for sequence length is reached
        elif self.t_len == self.max_seq_len:
            self.done = True
        # NOP
        elif self.is_nop:
            self.done = True
        # Gate count too large
        # elif next_circ.gate_count > self.init_gate_cnt * 1.2:
        #     self.done = True
        elif next_circ.gate_count > 480:
            self.done = True

        # Compute next nodes
        # if self.is_nop or next_nodes == []:
        #     next_nodes = []
        # else:
        #     next_nodes = torch.tensor(next_nodes, dtype=torch.int64)
        #     if context.get_xfer_from_id(id=xfer).dst_gate_count != 0:
        #         src_node_ids, _, edge_ids = next_circ.to_dgl_graph().in_edges(
        #             next_nodes, form='all')
        #         edge_mask = next_circ.to_dgl_graph(
        #         ).edata['reversed'][edge_ids] == 0
        #         next_nodes = torch.cat((next_nodes, src_node_ids[edge_mask]))
        #     next_nodes = next_nodes.tolist()  # Could be []

        # Reward
        reward: int = 0
        if self.current_circ == None:
            reward = self.invalid_reward
        elif self.is_nop:
            reward = 0
        else:
            # reward = (self.current_circ.gate_count - next_circ.gate_count) * 5
            reward = self.current_circ.gate_count - next_circ.gate_count
        self.t_reward += reward

        reward: torch.Tensor = torch.tensor(reward)

        # Update rollout_buffer
        self.rollout_buffer.graphs.append(self.current_circ)
        self.rollout_buffer.nodes.append(node)
        self.rollout_buffer.xfers.append(xfer)
        self.rollout_buffer.xfer_logprobs.append(xfer_logprob)  # torch.Tensor
        self.rollout_buffer.masks.append(mask)  # torch.Tensor
        self.rollout_buffer.next_graphs.append(next_circ)
        self.rollout_buffer.next_nodes.append(next_nodes)
        self.rollout_buffer.rewards.append(reward)
        self.rollout_buffer.is_nops.append(self.is_nop)
        self.rollout_buffer.is_terminals.append(self.done)
        self.rollout_buffer.is_start_point.append(self.t_len == 1)

        next_circ_qasm_strs = next_circ.to_qasm_str().split("\n")[3:-1]
        circ_str = (
            self.first_piece
            + "\n"
            + "\n".join(next_circ_qasm_strs)
            + "\n"
            + self.third_piece
        )
        circ = PyGraph.from_qasm_str(context=self.context, qasm_str=circ_str)
        # Update intermediate graphs buffer
        if self.t_reward >= 0:
            # self.intermediate_circ_buffer['circ'].append(next_circ)
            self.intermediate_circ_buffer['circ'].append(circ)
            # self.intermediate_circ_buffer['hash'].append(next_circ.hash())
            self.intermediate_circ_buffer['hash'].append(circ.hash())

        # Update trajectory best gate count
        if (
            next_circ != None
            and next_circ.gate_count + self.rest_gate_cnt < self.t_best_gate_cnt
        ):
            self.t_best_gate_cnt = next_circ.gate_count + self.rest_gate_cnt
            self.t_best_circ = circ
            print(circ.gate_count)

        # Update trajectory gate count
        if self.done:
            if next_circ != None:
                self.t_gate_cnt = next_circ.gate_count + self.rest_gate_cnt
                # self.t_gate_cnt = circ.gate_count
            else:
                # self.t_gate_cnt = self.current_circ.gate_count
                self.t_gate_cnt = self.current_circ.gate_count + self.rest_gate_cnt

        # Update current_circ
        self.current_circ = next_circ


def sample_init_circs(
    circ_info: dict,
    circ_dataset: dict,
    circ_names: list,
    num_each_circ: int,
    keep_origin: bool = True,
) -> list:

    pass


def split_circuit_get_trajectory_batch(
    ppo_agent: PPO,
    context: QuartzContext,
    sampled_init_circs: list,
    max_seq_len: int,
    invalid_reward: int,
):
    trajectory_list: list[SplitCircuitTrajectory] = []
    for i, circ_info in enumerate(sampled_init_circs):
        trajectory_list.append(
            SplitCircuitTrajectory(i, context, *circ_info, max_seq_len, invalid_reward)
        )

    for _ in range(max_seq_len):
        # start = time.time()
        undone_ts = {}
        undone_ts['id'] = []
        undone_ts['curr_circ'] = []

        # Collect circuits and node_range from each trajectories
        for trajectory in trajectory_list:
            if trajectory.not_done():

                undone_ts['id'].append(trajectory.tid)
                undone_ts['curr_circ'].append(trajectory.current_circ)

        if len(undone_ts['id']) == 0:
            break
        else:
            # t_1 = time.time()
            nodes, xfers, xfer_logprobs, masks = ppo_agent.select_actions(
                undone_ts['curr_circ']
            )
            # t_2 = time.time()
            # print(f'network time: {t_2 - t_1}')

            for i, id in enumerate(undone_ts['id']):
                trajectory_list[id].apply_action_and_record(
                    context, nodes[i], xfers[i], xfer_logprobs[i], masks[i].clone()
                )

        # t_0 = time.time()
        # print(f'time: {t_0 - start}')

    intermediate_circs = {}
    trajectory_infos = {}

    for trajectory in trajectory_list:
        # PPO rollout buffer
        ppo_agent.buffer += trajectory.rollout_buffer

        # Aggregate trajectory infos
        if trajectory.init_circ_name not in trajectory_infos:
            trajectory_infos[trajectory.init_circ_name] = {}
            trajectory_infos[trajectory.init_circ_name]['num'] = 1
            trajectory_infos[trajectory.init_circ_name]['seq_len'] = trajectory.t_len
            trajectory_infos[trajectory.init_circ_name]['reward'] = trajectory.t_reward
            trajectory_infos[trajectory.init_circ_name][
                'best_reward'
            ] = trajectory.t_reward
            trajectory_infos[trajectory.init_circ_name][
                'best_gate_cnt'
            ] = trajectory.t_best_gate_cnt
            trajectory_infos[trajectory.init_circ_name][
                'best_circ'
            ] = trajectory.t_best_circ
            trajectory_infos[trajectory.init_circ_name][
                'best_final_gate_cnt'
            ] = trajectory.t_gate_cnt
        else:
            trajectory_infos[trajectory.init_circ_name]['num'] += 1
            trajectory_infos[trajectory.init_circ_name]['seq_len'] += trajectory.t_len
            trajectory_infos[trajectory.init_circ_name]['reward'] += trajectory.t_reward
            trajectory_infos[trajectory.init_circ_name]['best_reward'] = max(
                trajectory.t_reward,
                trajectory_infos[trajectory.init_circ_name]['best_reward'],
            )
            if (
                trajectory.t_best_gate_cnt
                < trajectory_infos[trajectory.init_circ_name]['best_gate_cnt']
            ):
                trajectory_infos[trajectory.init_circ_name][
                    'best_gate_cnt'
                ] = trajectory.t_best_gate_cnt
                trajectory_infos[trajectory.init_circ_name][
                    'best_circ'
                ] = trajectory.t_best_circ
            trajectory_infos[trajectory.init_circ_name]['best_final_gate_cnt'] = min(
                trajectory.t_gate_cnt,
                trajectory_infos[trajectory.init_circ_name]['best_final_gate_cnt'],
            )

        # Gather intermediate circuits
        if trajectory.init_circ_name not in intermediate_circs:
            intermediate_circs[trajectory.init_circ_name] = {}
            intermediate_circs[trajectory.init_circ_name][
                'circ'
            ] = trajectory.intermediate_circ_buffer['circ']
            intermediate_circs[trajectory.init_circ_name][
                'hash'
            ] = trajectory.intermediate_circ_buffer['hash']
        else:
            intermediate_circs[trajectory.init_circ_name][
                'circ'
            ] += trajectory.intermediate_circ_buffer['circ']
            intermediate_circs[trajectory.init_circ_name][
                'hash'
            ] += trajectory.intermediate_circ_buffer['hash']

    for circ in trajectory_infos:
        trajectory_infos[circ]['avg_seq_len'] = (
            trajectory_infos[circ]['seq_len'] / trajectory_infos[circ]['num']
        )
        trajectory_infos[circ]['avg_reward'] = (
            trajectory_infos[circ]['reward'] / trajectory_infos[circ]['num']
        )

    return intermediate_circs, trajectory_infos
