import matplotlib.pyplot as plt
import numpy as np
import re

num_gpus = [4, 2, 1]
num_qubits = [28, 29, 30, 31, 32]

simu_time_quartz = {}
simu_time_qdao_cuquantum = {}
simu_time_qdao_qiskit = {}
baselines = {'Atlas': simu_time_quartz, "QDAO-cuQuantum": simu_time_qdao_cuquantum,
             "QDAO-Qiskit": simu_time_qdao_qiskit}
styles = {'Atlas': '-o', "QDAO-cuQuantum": '--x',
          "QDAO-Qiskit": ':*'}

# read data from file: quartz
for g in num_gpus:
    simulation_time = []
    for nq in num_qubits:
        t = 0
        try:
            with open(f'logs/offload_{g}_{nq}.log', 'r') as f:
                last_lines = f.readlines()[-1000:]
                for line in last_lines:
                    match = re.search(r"ELAPSED TIME = (\d+\.\d+)s", line)
                    if match:
                        t_rank = float(match.group(1))
                        t = max(t, t_rank)
                simulation_time.append(t)
        except IOError as e:
            simulation_time.append(None)
    simu_time_quartz[g] = simulation_time

# read data from file: qdao-cuquantum
for g in num_gpus:
    simulation_time = []
    for nq in num_qubits:
        try:
            with open(f'logs/qdao-cuquantum/qdao_{g}_{nq}_19.log', 'r') as f:
                line = f.readline()
                t = float(line)
                simulation_time.append(t)
        except IOError as e:
            simulation_time.append(None)
    simu_time_qdao_cuquantum[g] = simulation_time

# read data from file: qdao-qiskit
for g in num_gpus:
    simulation_time = []
    for nq in num_qubits:
        try:
            with open(f'logs/qdao-qiskit/qdao_{g}_{nq}_19.log', 'r') as f:
                line = f.readline()
                t = float(line)
                simulation_time.append(t)
        except IOError as e:
            simulation_time.append(None)
    simu_time_qdao_qiskit[g] = simulation_time


for baseline, simu_time in baselines.items():
    print(baseline, '1 GPU', simu_time[1][4] / simu_time[1][0])
    if simu_time[4][4] is not None:
        print(baseline, '4 GPUs', simu_time[4][4] / simu_time[4][0])
    if baseline == 'Atlas':
        continue
    speedups = []
    mean_speedups = []
    for g in num_gpus:
        cuquantum = np.array(simu_time[g])
        quartz = np.array(simu_time_quartz[g])
        if cuquantum[0] is None:
            continue
        speedup = cuquantum / quartz
        mean_speedups.append(speedup.mean())
        speedups.append(speedup.max())
    print('max speedup over', baseline, np.array(speedups).max())
    print('mean speedup over', baseline, np.array(mean_speedups).mean())


def plot_offload():
    plt.cla()
    fig, ax = plt.subplots(layout='constrained')
    for baseline, simu_time in baselines.items():
        for g in num_gpus:
            if simu_time[g][0] is None:
                continue
            plt.plot(num_qubits, simu_time[g], styles[baseline], label=f'{baseline} {g} GPU{"s" if g > 1 else ""}')

    plt.xticks(num_qubits, fontsize=12)
    plt.yticks(fontsize=12)

    plt.xlabel('Number of Qubits', fontsize=12, fontweight='bold')
    plt.ylabel('Simulation Time (s)', fontsize=12, fontweight='bold')
    plt.yscale('log')
    # plt.ylim(top=simu_time_qdao_cuquantum[4][4] * 1.05)
    fig = plt.gcf()
    plt.legend(fontsize=12, ncol=1, bbox_to_anchor=(1, 1))
    fig.set_size_inches(5.6, 2.7)
    plt.savefig('scalability.pdf', dpi=1000, bbox_inches='tight')


plot_offload()
