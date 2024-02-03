#!/bin/bash

#SBATCH --job-name=mkref_job
#SBATCH --nodes=1
#SBATCH --cpus-per-task=16   # Replace with the appropriate number of CPUs
#SBATCH --mem=24000           # Replace with the appropriate amount of memory
#SBATCH --time=2:00:00
#SBATCH --output=/scratch/course/2023w300106/barrera/cellranger_ref.log
#SBATCH --error=/scratch/course/2023w300106/barrera/cellranger_ref.err
#SBATCH --mail-type=END
#SBATCH --mail-user=cristian.barrera@univie.ac.at


STAR --runMode genomeGenerate \
--genomeDir jaNemVect1.1_STAR \
--runThreadN 8 \
--genomeFastaFiles GCF_932526225.1_jaNemVect1.1_genomic.fna \
--genomeSAindexNbases 13
