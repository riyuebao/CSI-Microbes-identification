cd test-10x
sbatch \
--time=8:00:00 \
--cpus-per-task=4 \
--mem=16g \
scripts/run-snakemake.sh
