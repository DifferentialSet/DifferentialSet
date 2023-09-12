
# [**OOPSLA'23 Artifact**] Quantifying and Mitigating Cache Side Channel Leakage with Differential Set

This repository contains the tool source code, benchmarks and instructions to reproduce the results in the paper. It contains the latest implementation of the tool, which contain bug fixes and may be different from the one used in the paper. Please checkout the git tag OOPSLA23 to get the exact version used in the paper.

## Table of Contents

* [Repo overview](#overview)
* [Platform requirements](#platform-requirements)
* [Getting started](#getting-started)
* [Quantification](#quantification)
* [Running CacheAudit](#running-cacheaudit)
* [Mitigation](#mitigation)
* [Running Constantine](#running-constantine)


## Overview
DSA is a tool that quantifies and mitigate the cache side channel leakage of a program. Part of the implementation is a modified model-checker *CBMC*, which takes in C code and outputs the constraints of the program in either *DIMACS* and *SMT-LIB v.2* format depending on the task. The constraints are analyzed and transformed through a series of Python scripts. For quantification task, we use *approxMC* to count the number of solutions of the constraints. For mitigation task, we use *Z3* to enumerate each differential set.

In the paper, we compare the task of *quantification* with the state-of-art tool *CacheAudit*, and the task of mitigation with the state-of-art tool *Constantine*. This repository contains the source code for CacheAudit, and we provide a Docker image for Constantine. Instructions to run the baselines are provided in the following sections.

As is stated in the paper, we evalaute DSA only on mitigation benchmarks without sensitive branches. Functionality of mitigating sensitive branches is implemented, but not evaluated. Quantifying benchmarks with sensitive branches is implemented and evaluated.

```
.
├── benchmarks
│   ├── collect_unroll.py (Utility script to collect unrolled mitigation benchmarks)
│   ├── mitigation (mitigation benchmark)
│   ├── quantification (quantification benchmark)
│   └── unroll (unrolled mitigation benchmark for use in Constantine)
├── cacheaudit (CacheAudit source code)
├── cbmc (CBMC source code)
├── Dockerfile
├── flake.lock
├── flake.nix (Nix file for setting up the environment)
├── README.md
└── scripts
    ├── alignment.py (Aligning observation points across senseitive branches)
    ├── count_cc.py (Using approxMC to count the number of solutions)
    ├── miti_metrics.json
    ├── patch_decoy.py (Patch with C code with decoy instructions across sensitive branches)
    ├── random_input.txt (Random inputs for running quantification benchmarks)
    ├── run_cacheaudit.py (Python script to run CacheAudit)
    ├── run_miti.py (Python script to run mitigation benchmarks)
    ├── run_quant.py (Python script to run quantification benchmarks)
    ├── secure_load_store_avx512.c (C code for secure load and store using avx512)
    ├── secure_load_store.c (C code for secure load and store using avx2)
    ├── util.py (Utility functions)
    └── z3_enumerate.py (Using Z3 to enumerate differential sets)
```


## Platform requirements

DSA relies heavily on multi-core parallelism to speed up the analysis, and using a machine with smaller number of cores will still work but will take longer to finish. Some benchmarks(`pycrypto/Blowfish/` and `libg/twofish` use more than 16G) also require a large amount of memory to run, and you may choose to skip those benchmarks if you do not have enough memory. 

DSA also requires either AVX2 or AVX512 support. You can check if your CPU has these instruction set by running `cat /proc/cpuinfo | grep -E 'avx2|avx512'`.

If you want to benchmark the performance of DSA(which is done by default in the script), your host environment needs to support CPU performance counters. You can check it by running `perf stat echo hi `, and ensure that the output of `cycles` is not `not supported`.

For reference, we use the following machine to evaluate DSA:

* Memory: 192 GB
* CPU: 96 cores with AVX512 support

To set up the environment with all required dependencies, you can either use the provided Docker image or build the environment from scratch using Nix. We uses Nix version 2.16.2.

## Getting Started

### 1. Set up the environment

You can either use the provided Docker image or build the environment from scratch using Nix. The rest of the instructions are the same for both approaches. Using Nix will take longer since it builds some dependencies from source.

#### Using docker
```console
# the docker container needs to run with --privileged flag to access CPU performance counters
$ docker run -it --privileged hflsmax/dsa:OOPSLA23
```

#### Using nix
```console
nix --extra-experimental-features "nix-command flakes" develop
```

## Quantification
1. Run the quantification script
```console
cd scripts
python run_quant.py
```
2. Check results in `quant_metrics.json`. If the script errors out, you can find partial result in `debug_quant_metrics.json`. The *CC* field in the result denotes the leakage amount.

## Running CacheAudit
1. Run the CacheAudit script
```console
cd scripts
python run_cacheaudit.py
```
2. Check results in `cacheaudit_metrics.json`.

## Mitigation
1. Run the mitigation script
```console
cd scripts
python run_miti.py
```
2. Check results in `miti_metrics.json`. If the script errors out, you can find partial result in `debug_miti_metrics.json`. The *overhead* field in the result denotes the overhead of the mitigation.
3. To check the size of the differential sets, and thus confirm the reduction in the memory footprint, check `sensitive_ds_info.csv` inside each benchmark folder. The second column denotes the size of the differential set.

## Running Constantine
1. Run the Constantine script. The unrolled benchmark programs, which we deem as the source program, are already inside the image.
```console
docker run -it --privileged hflsmax/dsa:constantine
cd /constantine/src
. ./setup.sh
cd apps/others
./run_all.sh
```
2. Check results in `result.csv`. The *cycles_overhead* field in the result denotes the overhead of the mitigation.