## Single cell analysis practical course Winter 2023
This repository contains the codes, summary notes and principal results generated for the understanding of the single-cell analysis pipeline of Nematostella vectensis. 

## Star (Reference) - Star-ref.sh generating_index_star.sh
It is used to generate an index that optimizes the search of sequences. It is necessary to be executed before the mapping.

# Star (Mapping) - map_star.sh / mapper_trimmomatic.sh
This parameter was used to map the short reads from RNA-seq to the reference genome. 

## Augustus -augustus.sh
The program was used to generate a gene transfer file (.gtf) that could be used by Cellranger. This file indicates the location of the genes and could contain also information abut codin sequence regions. 

##Interpro -interpro.sh
This program was used to give annotation to the proteins obtained from Transdecoder using the interpro database.

##Samtools (filtering) -samtools_filtering.sh
In summary, this command line instruction loads samtools and then uses it to filter a BAM file, keeping only properly paired reads (those that align correctly with their mate in the expected orientation and distance), excluding unmapped reads, and only including reads with a mapping quality score of 20 or higher. 

##Eggnog eggnog_mappr.sh / emapper.sh
This annotation tool is also used to get information about the sequences obtained from Transdecoder, it maps them to orthologous groups and functional terms from the eggNOG database

##Trimmomatic -trimmomatic.sh
This program is used to filter out sequences that do not meet certain quality parrameters. Those sequences are discarded in order to avoid alterations in the downstream analysis. 

##Cellranger (mkref) -cellranger_ref.sh  
Uses star to generate an index for the later mapping.

##Cellranger (count) -cellranger_count.sh
Maps the RNA reads to the built reference. It will generate at the end a count matrix that contains the RNA-counts (genes) associated with individual cells.
