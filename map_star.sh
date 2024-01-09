#!/bin/bash

#SBATCH --job-name=Star_1
#SBATCH --nodes=1
#SBATCH --mem=16000M
#SBATCH --time=10:00:00
#SBATCH --cpus-per-task=16
#SBATCH --partition=basic
#SBATCH --output=/scratch/course/2023w300106/barrera/star.log
#SBATCH --error=/scratch/course/2023w300106/barrera/star.err
#SBATCH --mail-type=END
#SBATCH --mail-user=cristian.barrera@univie.ac.at
#Loading modules
module load star
module list

cd /scratch/course/2023w300106/barrera/
mkdir ex4
cd ex4

#Executing STA
STAR --runThreadN 16 \
--genomeDir /scratch/course/2023w300106/barrera/test1/ncbi_dataset/data/GCF_932526225.1/jaNemVect1.1_STAR \
--readFilesIn /scratch/course/2023w300106/barrera/ex_5/SRR24348395/SRR24348395_1.fastq /scratch/course/2023w300106/barrera/ex_5/SRR24348395/SRR24348395_2.fastq \
--outSAMtype BAM SortedByCoordinate \
--twopassMode Basic\
--outSAMstrandField intronMotif \
--outputFileNamePrefix SRR24348395
