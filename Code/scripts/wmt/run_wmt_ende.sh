#!/bin/bash

onmt-main train_and_eval \
          --model_type Transformer \
          --config config/wmt_ende.yml \
          --num_gpus 4
