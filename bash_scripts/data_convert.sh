#!/bin/bash
#SBATCH --job-name=libero_compute_norm        # Job name
#SBATCH --nodes=1                    # Number of nodes
#SBATCH --ntasks=1                   # Number of tasks (processes)
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=8            # Number of CPU cores per task
#SBATCH --mem=120G                    # Memory per node
#SBATCH --time=10:00:00              # Time limit (hh:mm:ss)
#SBATCH --output=slurm_outputs/%x/out_log_%x_%j.out     ## Output File
#SBATCH --mail-user=zz8976@princeton.edu
#SBATCH --exclude=neu301,neu309,neu312

cd /n/fs/cat10301/projects/openpi
uv run scripts/compute_norm_stats.py --config-name pi0_fast_libero_low_mem_finetune
