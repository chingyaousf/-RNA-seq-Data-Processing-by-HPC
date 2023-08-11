#!/bin/bash
#SBATCH --ntasks=3
#SBATCH --chdir=../Work
#SBATCH --mail-type=ALL
#SBATCH --time=00:30:00
#SBATCH --mem=10000
#SBATCH --nodes=1
#SBATCH --mail-user=your_email
#SBATCH --job-name=run_cuffnorm
#SBATCH --output=run_cuffnorm.out

module purge
module load apps/cufflinks/2.2.1

##Variables shared between samples
REF_ANNOTATION=../Reference_Data/PlasmoDB-41_Pfalciparum3D7.gff
NUMBER_OF_PROCESSORS=3
##Sample specific stuff

SAMPLE1_BAM=vehicle_rep1.bam
SAMPLE2_BAM=vehicle_rep2.bam

SAMPLE3_BAM=drug_rep1.bam
SAMPLE4_BAM=drug_rep2.bam

CONTROL_LABEL=Vehicle
EXPERIMENT_LABEL=Drug

OUTPUT=Cuffnorm_Output
NORMALIZTION_METHOD=classic-fpkm
