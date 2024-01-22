  GNU nano 2.9.8                                                                    cell_ranger_count_exercise.sh                                                                               
#!/bin/bash

#SBATCH --job-name=cellranger_count  # Job name
#SBATCH --nodes=1                    # Number of nodes to use
#SBATCH --cpus-per-task=16           # Number of CPU cores to allocate
#SBATCH --mem=24000                  # Memory to allocate in MB
#SBATCH --time=12:00:00               # Maximum time for the job to run (hh:mm:ss)
#SBATCH --output=/scratch/course/2023w300106/barrera/cell_ranger_1.log
#SBATCH --error=/scratch/course/2023w300106/barrera/cell_ranger_1.err
#SBATCH --mail-type=END
#SBATCH --mail-user=cristian.barrera@univie.ac.at

#Loading modules

mkdir

module load cellranger

# Run cellranger count
cellranger count \
  --id cellranger_count_8d1n2 \
  --transcriptome /scratch/course/2023w300106/barrera/genome_ref_nemato/
  --fastqs /scratch/molevo/agcole/course/datafiles/sequences_raw/8d2.run1 \
  --sample 64066 \
  --localcores 16 \
  --localmem 20 \
