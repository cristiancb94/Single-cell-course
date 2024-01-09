#!/bin/bash

#SBATCH --job-name=Trimmomatic
#SBATCH --nodes=1
#SBATCH --mem=8000M
#SBATCH --time=10:00:00
#SBATCH --cpus-per-task=8
#SBATCH --partition=basic
#SBATCH --output=/scratch/course/2023w300106/barrera/trim.log
#SBATCH --error=/scratch/course/2023w300106/barrera/trim.err
#SBATCH --mail-type=END
#SBATCH --mail-user=cristian.barrera@univie.ac.at
#Loading modules


#Check modules 
module load trimmomatic/0.39
module list

#Set up directories
mkdir /scratch/course/2023w300106/barrera/ex_5/SRR24348395/trim
cd /scratch/course/2023w300106/barrera/ex_5/SRR24348395/trim

#Actual command of trimmomatic
trimmomatic PE -threads 8 \
-trimlog trimmomatic.log \
-summary trimm_summ.txt \
/scratch/course/2023w300106/barrera/ex_5/SRR24348395/SRR24348395_1.fastq \
/scratch/course/2023w300106/barrera/ex_5/SRR24348395/SRR24348395_2.fastq \
/scratch/course/2023w300106/barrera/ex_5/SRR24348395/trim/SRR24348395_R1.qc.fastq \
/scratch/course/2023w300106/barrera/ex_5/SRR24348395/trim/SRR24348395_S1.qc.fastq \
/scratch/course/2023w300106/barrera/ex_5/SRR24348395/trim/SRR24348395_R2.qc.fastq \
/scratch/course/2023w300106/barrera/ex_5/SRR24348395/trim/SRR24348395_S2.qc.fastq \
ILLUMINACLIP:/scratch/course/2023w300106/barrera/adapter.fa:2:30:10 \
SLIDINGWINDOW:6:15 \
MINLEN: 75 \
