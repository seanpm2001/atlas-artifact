#!/bin/bash

mkdir -p logs

for n in 28 28 29 30 31 32; do  # warm up first, run the first experiment again
  for t in 19; do
    echo "running 1 $n $t"
    CUDA_VISIBLE_DEVICES=0 python run_qdao.py -n $n -m 28 -t $t >logs/qdao_1_${n}_${t}.log
  done
done

argc=$#

if [ $argc -gt 0 ]; then
  for n in 29 30 31 32; do
    echo "running 2 $n 19"
    CUDA_VISIBLE_DEVICES=0,1 python run_qdao.py -n $n -m 28 -t 19 >logs/qdao_2_${n}_19.log
  done
  for n in 30 31 32; do
    echo "running 4 $n 19"
    CUDA_VISIBLE_DEVICES=0,1,2,3 python run_qdao.py -n $n -m 28 -t 19 >logs/qdao_4_${n}_19.log
  done
fi

#LD_LIBRARY_PATH="" srun --account=YOUR_ACCOUNT \
#     --qos=regular \
#     --constraint="gpu" \
#     --nodes=1 \
#     --gpus-per-node=2 \
#     --gpus-per-task=1 \
#     --gpu-bind=none \
#     --ntasks=2 \
#     --gpus=2 \
#     python run_qdao.py -n 28 -m 26 -t 19 > logs/qdao_2_28_19.log
