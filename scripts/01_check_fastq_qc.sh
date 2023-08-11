#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --chdir=../Work
#SBATCH --mail-type=ALL
#SBATCH --time=00:10:00
#SBATCH --mem=10000
#SBATCH --nodes=1
#SBATCH --mail-user=your_email
#SBATCH --job-name=FASTQC
#SBATCH --output=fastqc.out

module load apps/fastqc/0.11.5
fastqc ../FASTQs/*.fastq.gz --outdir ../FASTQ_QC
