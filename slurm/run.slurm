#!/bin/bash
#SBATCH --job-name="csc373-DM"
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --mem=16GB
#SBATCH --time=01-00:00:00
#SBATCH --output="OUTPUT-%j.o"
#SBATCH --error="ERROR-%j.e"
#SBATCH --mail-user=zeltep21@wfu.edu
#SBATCH --mail-type=END,FAIL
#SBATCH --account=csc373
#SBATCH --partition=gpu
#SBATCH --gpus=1

# Load a software module
module load /deac/csc/classes/csc373/software/modulefiles/csc373/python/3.11.8

# Go into your work path
cd /deac/csc/classes/csc373/${USER}/assignment_5/scripts

# Run the program
python assignment_5.py
