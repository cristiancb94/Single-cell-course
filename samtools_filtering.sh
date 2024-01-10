#!/bin/bash

#SBATCH --job-name=samtools
#SBATCH --nodes=1
#SBATCH --mem=8000M
#SBATCH --time=1:00:00
#SBATCH --cpus-per-task=8
#SBATCH --partition=basic
#SBATCH --output=/scratch/course/2023w300106/barrera/samtools.log
#SBATCH --error=/scratch/course/2023w300106/barrera/samtools.err
#SBATCH --mail-type=END
#SBATCH --mail-user=cristian.barrera@univie.ac.at

module load samtools

samtools view -b -o /scratch/course/2023w300106/BAMS/SRR24348395.f.bam -f 0x2 -F 0x4 -q 20 -@ 8 /scratch/course/2023w300106/barrera/ex4/SRR24348395_trim_Aligned.sortedByCoord.out.bam
