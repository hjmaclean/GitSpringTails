#!/bin/bash 
#SBATCH --mem=100000
#SBATCH -c 6
#SBATCH -t 24:00:00


## set your memory and nodes. 


source /com/extra/STAR/2.5.2b/load.sh

# You need to run first: IndexReferenceGenomes.sh

#this will do Via Desiccated to F. candida

cd /home/hmaclean/RNAseq/Via

STAR --runThreadN 12 --genomeDir /home/hmaclean/RNAseq/Fcandida --readFilesIn 13_TGACCA_L005_R1_001.fastq 13_TGACCA_L005_R2_001.fastq --outFileNamePrefix /home/hmaclean/faststorage/Align/FVia.13


STAR --runThreadN 12 --genomeDir /home/hmaclean/RNAseq/Fcandida --readFilesIn 14_TAGCTT_L005_R1_001.fastq 14_TAGCTT_L005_R2_001.fastq --outFileNamePrefix /home/hmaclean/faststorage/Align/FVia.14


STAR --runThreadN 12 --genomeDir /home/hmaclean/RNAseq/Fcandida --readFilesIn 15_ATGTCA_L005_R1_001.fastq 15_ATGTCA_L005_R2_001.fastq --outFileNamePrefix /home/hmaclean/faststorage/Align/FVia.15
