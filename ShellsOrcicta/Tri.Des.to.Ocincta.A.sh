#!/bin/bash 
#SBATCH --mem=100000
#SBATCH -c 6
#SBATCH -t 24:00:00

## set your memory and nodes. 


source /com/extra/STAR/2.5.2b/load.sh

# You need to run first: IndexReferenceGenomes.sh

#this will do Tri Desiccated to O.cincta

cd /home/hmaclean/RNAseq/Tri

STAR --runThreadN 12 --genomeDir /home/hmaclean/RNAseq/Ocincta --readFilesIn 5_CGATGT_L004_R1_001.fastq 5_CGATGT_L004_R2_001.fastq --outFileNamePrefix /home/hmaclean/faststorage/Align/OTri.5


#STAR --runThreadN 12 --genomeDir /home/hmaclean/RNAseq/Ocincta --readFilesIn 6_TTAGGC_L004_R1_001.fastq 6_TTAGGC_L004_R2_001.fastq --outFileNamePrefix /home/hmaclean/faststorage/Align/OTri.6


#STAR --runThreadN 12 --genomeDir /home/hmaclean/RNAseq/Ocincta --readFilesIn 7_AGTTCC_L004_R1_001.fastq 7_AGTTCC_L004_R2_001.fastq --outFileNamePrefix /home/hmaclean/faststorage/Align/OTri.7
