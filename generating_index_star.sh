                                                                             
#!/bin/bash

#SBATCH --job-name=Star_1
#SBATCH --nodes=1
#SBATCH --mem=16000M
#SBATCH --time=1:00:00
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
mkdir ex9
cd ex9

#Executing STAR
STAR --runMode genomeGenerate --runThreadN 16 \
--genomeDir reference_transcriptome \
--genomeFastaFiles /scratch/course/2023w300106/barrera/transcriptome/transcriptome.fasta \
--genomeSAindexNbases 11
