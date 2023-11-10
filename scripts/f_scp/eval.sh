#!/bin/bash

# custom config
DATA=data
TRAINER=CoOp
SHOTS=16
NCTX=16
CSC=True
CTP=end

DATASET=$1
CFG=$2

for SEED in 1 2 3
do
    python train.py \
    --root ${DATA} \
    --seed ${SEED} \
    --trainer ${TRAINER} \
    --dataset-config-file configs/datasets/${DATASET}.yaml \
    --config-file configs/trainers/${TRAINER}/${CFG}.yaml \
    --output-dir output/test/${DATASET} \
    --model-dir output/test/${DATASET} \
    --load-epoch 200 \
    --eval-only \
    TRAINER.FSCP.N_CTX ${NCTX} \
    TRAINER.FSCP.CSC ${CSC} \
    TRAINER.FSCP.CLASS_TOKEN_POSITION ${CTP}
done