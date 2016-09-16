#!/bin/bash

#$ -cwd
#$ -q Annotation-2
#$ -S /bin/bash
#$ -pe mpich 20

module load SGA/v0.10.15

FILE1=../best_practice_qc/P3722_201/fastq_trimmed/P3722_201_S1_L001_R1_001.fastq
FILE2=../best_practice_qc/P3722_201/fastq_trimmed/P3722_201_S1_L001_R2_001.fastq
PREPROCESSED=Fucus_vesiculosus_A.Blomberg_15_20_MPL.preprocessed.fastq
GENOME=Fucus_vesiculosus_A.Blomberg_15_20_MPL.preprocessed.preqc

sga preprocess --pe-mode 1 $FILE1 $FILE2 > $PREPROCESSED
sga index -a ropebwt --no-reverse -t $NSLOTS $PREPROCESSED
sga preqc -t $NSLOTS $PREPROCESSED > $GENOME
sga-preqc-report.py $GENOME /usr/local/packages/sga-0.10.15/src/examples/preqc/*.preqc
