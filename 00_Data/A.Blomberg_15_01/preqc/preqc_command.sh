#!/bin/bash

#$ -cwd
#$ -q high_mem
#$ -S /bin/bash

FILE1=/nobackup/data11/Fucus_vesiculosus_genome_project/data/A.Blomberg_15_01/best_practice_qc/P1887_101/fastq_trimmed/7_150521_AC6VGLANXX_P1887_101_1.fastq
FILE2=/nobackup/data11/Fucus_vesiculosus_genome_project/data/A.Blomberg_15_01/best_practice_qc/P1887_101/fastq_trimmed/7_150521_AC6VGLANXX_P1887_101_2.fastq
PREPROCESSED=Fucus_vesiculosus.preprocessed.fastq
GENOME=Fucus_vesiculosus.preprocessed.preqc
CPU=8

sga preprocess --pe-mode 1 $FILE1 $FILE2 > $PREPROCESSED
sga index -a ropebwt --no-reverse -t $CPU $PREPROCESSED
sga preqc -t $CPU $PREPROCESSED > $GENOME
sga-preqc-report.py $GENOME /usr/local/bin/SGA-0.10.13/src/examples/preqc/*.preqc
