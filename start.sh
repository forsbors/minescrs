#!/bin/bash

echo "deb http://cz.archive.ubuntu.com/ubuntu jammy main" >> /etc/apt/sources.list
apt update
apt install libc6 -y
apt install -y g++-11
cd /hive/miners/custom/downloads
wget https://github.com/6block/zkwork_aleo_gpu_worker/releases/download/cuda-v0.2.5-hotfix/aleo_prover-v0.2.5_cuda_full_hotfix.tar.gz
tar -xzvf /hive/miners/custom/downloads/aleo_prover-v0.2.5_cuda_full_hotfix.tar.gz -C /hive/miners/custom
/hive/miners/custom/aleo_prover/aleo_prover