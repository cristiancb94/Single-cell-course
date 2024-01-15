#!/bin/bash

#SBATCH --job-name=FeatureCounts
#SBATCH --nodes=1
#SBATCH --mem=8000M
#SBATCH --time=01:00:00
#SBATCH --cpus-per-task=16
#SBATCH --partition=basic
#SBATCH --output=/scratch/course/2023w300106/barrera/feature_counts.log
#SBATCH --error=/scratch/course/2023w300106/barrera/feature_counts.err
#SBATCH --mail-type=END
#SBATCH --mail-user=cristian.barrera@univie.ac.at


#Loading modules
module load subread
module list

#Script
featureCounts -T 16 -Q 20 -s 2 -p -C -a /scratch/course/2023w300106/jmontenegro/ex2/annotation/tmp.gtf \
-o /scratch/course/2023w300106/barrera/count_matrix /scratch/course/2023w300106/barrera/ex4/SRR24348395_trim_Aligned.sortedByCoord.out.bam
