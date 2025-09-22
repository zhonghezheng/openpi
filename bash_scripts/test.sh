#!/bin/bash
#SBATCH --job-name=test_pi0_fast_libero_low_mem      # Job name
#SBATCH --nodes=1                    # Number of nodes
#SBATCH --gres=gpu:4
#SBATCH --ntasks-per-node=8          # Number of tasks (processes)
#SBATCH --cpus-per-task=8            # Number of CPU cores per task
#SBATCH --mem=120G                   # Memory per node
#SBATCH --time=24:00:00              # Time limit (hh:mm:ss)
#SBATCH --output=slurm_outputs/%x/out_log_%x_%j.out     ## Output File
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=zz8976@princeton.edu
#SBATCH --exclude=neu301,neu309,neu312

cd /n/fs/cat10301/projects/openpi
uv run scripts/serve_policy.py policy:checkpoint --policy.config=pi0_fast_libero_low_mem_finetune --policy.dir=checkpoints/pi0_fast_libero_low_mem_finetune/my_experiment/20000
