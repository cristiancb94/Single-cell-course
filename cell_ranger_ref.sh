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

# Load the required modules
module load cellranger


# Replace these variables with the actual paths to your genome FASTA and gene annotation GTF files
GENOME_NAME="genome_ref_nemato"
GENOME_FASTA="/scratch/molevo/jmontenegro/nvectensis/data/refs/fluorophores/Nv2_wnt4_pcna_fluo.fa"
GENE_ANNOTATION_GTF="/scratch/molevo/jmontenegro/nvectensis/data/refs/fluorophores/Nv2_wnt4_pcna_fluo.gtf"

# Run cellranger mkref to create the reference package
cellranger mkref --genome=${GENOME_NAME} --fasta=${GENOME_FASTA} --genes=${GENE_ANNOTATION_GTF} --memgb=16 --nthreads=${SLURM_CPUS_PER_TASK}
