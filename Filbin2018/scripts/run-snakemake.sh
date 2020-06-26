#!/bin/bash

module load snakemake
snakemake \
--use-conda \
--nolock \
--rerun-incomplete \
--cluster-config config/cluster.json \
--cluster "sbatch --partition={cluster.partition} --time={cluster.time} --mem={cluster.mem} --cpus-per-task={cluster.nthreads} --gres=lscratch:{cluster.gres}" \
--jobs 100 \
--latency-wait 60 \
--keep-going \
--config patient=$1 start=$2 stop=$3 \
--local-cores 2 all
