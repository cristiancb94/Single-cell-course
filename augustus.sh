#!/bin/bash

#SBATCH --job-name=augustus_chr1
#SBATCH --nodes=1
#SBATCH --mem=32000M
#SBATCH --time=48:00:00
#SBATCH --cpus-per-task=1
#SBATCH --partition=basic
#SBATCH --output=/scratch/course/2023w300106/barrera/augustus.log
#SBATCH --error=/scratch/course/2023w300106/barrera/augustus.err
#SBATCH --mail-type=END
#SBATCH --mail-user=cristian.barrera@univie.ac.at

#Loading environments
ml conda
conda activate augustus-3.5.0

#Creating directories
cd /scratch/course/2023w300106/barrera/
mkdir ex_7
cd ex_7
#Executing augustus
augustus --strand=both --genemodel=complete --gff3=on  \
--outfile=nemVec_augustus.gff --species=nematostella_vectensis \
/scratch/course/2023w300106/barrera/test1/ncbi_dataset/data/GCF_932526225.1/chr3.fasta
