#!/bin/bash 
#SBATCH --mem=100000
#SBATCH -c 6
#SBATCH -t 24:00:00

## set your memory and nodes. 

source /com/extra/STAR/2.5.2b/load.sh

# Run first: Indexed reference genomes with IndexReferenceGenomes.sh

cd /home/hmaclean/RNAseq/Via

#STAR --runThreadN 12 --genomeDir /home/hmaclean/RNAseq/Ocincta --readFilesIn 9_GCCAAT_L004_R1_001.fastq 9_GCCAAT_L004_R1_001.fastq --outFileNamePrefix /home/hmaclean/faststorage/Align/OVia.9


#STAR --runThreadN 12 --genomeDir /home/hmaclean/RNAseq/Ocincta --readFilesIn 10_CTTGTA_L005_R1_001.fastq 10_CTTGTA_L005_R2_001.fastq --outFileNamePrefix /home/hmaclean/faststorage/Align/OVia.10


STAR --runThreadN 12 --genomeDir /home/hmaclean/RNAseq/Ocincta --readFilesIn 11_GCCAAT_L005_R1_001.fastq 11_GCCAAT_L005_R2_001.fastq --outFileNamePrefix /home/hmaclean/faststorage/Align/OVia.11

