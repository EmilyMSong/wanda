#!/bin/bash

sparsity_ratio=0.5

run_python_command () {
    python3 main.py \
    --model $1 \
    --prune_method wanda \
    --sparsity_ratio $sparsity_ratio \
    --sparsity_type unstructured \
    --save "out/test1/"
}

run_python_command meta-llama/Llama-2-7b-hf
run_python_command meta-llama/Llama-2-13b-hf
run_python_command meta-llama/Llama-2-70b-hf
