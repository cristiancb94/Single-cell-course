#!/bin/bash
#SBATCH --job-name=cellranger_count  # Job name
#SBATCH --nodes=1                    # Number of nodes to use
#SBATCH --cpus-per-task=16           # Number of CPU cores to allocate
#SBATCH --mem=20000                  # Memory to allocate in MB 
#SBATCH --time=24:00:00               # Maximum time for the job to run (hh:mm:ss)
#SBATCH --output=/scratch/course/2023w300106/barrera/cell_ranger.log
#SBATCH --error=/scratch/course/2023w300106/barrera/cell_ranger.err
#SBATCH --mail-type=END
#SBATCH --mail-user=cristian.barrera@univie.ac.at

#Loading modules

module load cellranger

# Run cellranger count
cellranger count \
  --id cellranger_count \
  --transcriptome /scratch/course/2023w300106/barrera/genome_ref_nemato \
  --fastqs /scratch/course/2023w300106/12hr1/run1,/scratch/course/2023w300106/12hr1/run2,/scratch/course/2023w300106/12hr1/run3 \
  --sample 89085 \
  --localcores 16 \
  --nosecondary \
  --localmem 20 \

~                                                                                                                                                                                               ~                      
