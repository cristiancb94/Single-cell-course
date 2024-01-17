#!/bin/bash

#SBATCH --job-name=emapper
#SBATCH --nodes=1
#SBATCH --mem=8000M
#SBATCH --time=24:00:00
#SBATCH --cpus-per-task=16
#SBATCH --partition=basic
#SBATCH --output=/scratch/course/2023w300106/barrera/emapper.log
#SBATCH --error=/scratch/course/2023w300106/barrera/emapper.err
#SBATCH --mail-type=END
#SBATCH --mail-user=cristian.barrera@univie.ac.at



#loading modules
module load conda
conda activate eggnog-mapper-2.1.12

#Command for eggnog
emapper.py -i /scratch/course/2023w300106/barrera/jaNemVec.transdecoder/proteinTransdecoder.fasta --cpu 16 \
 --itype proteins --data_dir /scratch/mirror/eggnog-mapper/2.1.12/ \
 -m diamond --pident 60 --query_cover 60 --subject_cover 70 --tax_scope 'eukaryota_broad' \
 --output jaNemVec1_emapper --output_dir /scratch/course/2023w300106/barrera/jaNemVec.transdecoder/ \
 --temp_dir ${TMPDIR} --decorate_gff jaNemVec1_emapper.dec.gff --override
