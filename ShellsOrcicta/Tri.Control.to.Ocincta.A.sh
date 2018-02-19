#!/bin/bash 

#SBATCH --mem=100000
#SBATCH -c 6
#SBATCH -t 24:00:00

## set your memory and nodes. 


#source /com/extra/ucsc/2015-04-21/load.sh
#source /com/extra/samtools/1.6.0/load.sh
source /com/extra/STAR/2.5.2b/load.sh

## simple trial alignment…. 
# Run first: Indexed reference genomes with IndexReferenceGenomes.sh


#this will do Tri Controls to O.cincta

cd /home/hmaclean/RNAseq/Tri

STAR --runThreadN 12 --genomeDir /home/hmaclean/RNAseq/Ocincta --readFilesIn 1_CAGATC_L004_R1_001.fastq 1_CAGATC_L004_R2_001.fastq --outFileNamePrefix /home/hmaclean/faststorage/Align/OTri.1


STAR --runThreadN 12 --genomeDir /home/hmaclean/RNAseq/Ocincta --readFilesIn 3_GTTTCG_L004_R1_001.fastq 3_GTTTCG_L004_R2_001.fastq --outFileNamePrefix /home/hmaclean/faststorage/Align/OTri.3


STAR --runThreadN 12 --genomeDir /home/hmaclean/RNAseq/Ocincta --readFilesIn 4_AGTCAA_L005_R1_001.fastq 4_AGTCAA_L005_R2_001.fastq  --outFileNamePrefix /home/hmaclean/faststorage/Align/OTri.4
