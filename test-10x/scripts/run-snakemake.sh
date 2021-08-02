#!/bin/bash

## older version such as 5.4.0 is missing [--group-components] option and will error out 
module load snakemake/6.6.1
snakemake \
--use-conda \
--rerun-incomplete \
--cluster-config config/cluster.json \
--cluster "sbatch --time={cluster.time} --mem={cluster.mem} --cpus-per-task={cluster.nthreads} --gres=lscratch:{cluster.gres}" \
--jobs 100 \
--latency-wait 60 \
--keep-going \
--group-components split_PathSeq_BAM_by_CB_UB=12 PathSeqScoreSpark=12 \
--local-cores 4 all
