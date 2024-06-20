#!/bin/sh
#PJM -L rscgrp=share
#PJM -L gpu=1
#PJM -g gg45
#PJM -j
#PJM --fs /work

source /work/gg45/g45004/.bashrc
conda activate loop_tf

python3 arithmetic/data.py \
    --file "/home/gg45/g45004/data/CoT_benchmark" \
    --length 6 \
    --train_size 1e6 \
    --test_size 1e5\
    --number_range 11\
    --under