cd Karaayvaz2018/identify-microbes-workflow
sbatch \
--time=7-00:00:00 \
--cpus-per-task=4 \
--mem=8g \
--partition=norm,ccr \
scripts/run-many-snakejobs.sh
