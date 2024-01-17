#!/bin/bash

#SBATCH --job-name=interpro_scan
#SBATCH --nodes=1
#SBATCH --mem=8000M
#SBATCH --time=24:00:00
#SBATCH --cpus-per-task=16
#SBATCH --partition=basic
#SBATCH --output=/scratch/course/2023w300106/barrera/interpro.log
#SBATCH --error=/scratch/course/2023w300106/barrera/interpro.err
#SBATCH --mail-type=END
#SBATCH --mail-user=cristian.barrera@univie.ac.at

#Module loading
module load interproscan
module list

#Command
interproscan.sh -appl -b /scratch/course/2023w300106/barrera/jaNemVec.transdecoder/NemVec.function \
 -etra -f TSV,GFF3 -goterms -i /scratch/course/2023w300106/barrera/jaNemVec.transdecoder/proteinTransdecoder.fasta \
 -iprlookup -pa -t p
