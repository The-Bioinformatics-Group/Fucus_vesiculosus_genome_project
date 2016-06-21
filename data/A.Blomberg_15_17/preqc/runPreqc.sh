#!/bin/bash

FILE1=best_practice_qc/P3719_201/fastq_trimmed/P3719_201_S1_L001_R1_001.fastq
FILE2=best_practice_qc/P3719_201/fastq_trimmed/P3719_201_S1_L001_R2_001.fastq
PREPROCESSED=P3719_201.best_practice_qc.preprocessed.fastq
GENOME=P3719_201.best_practice_qc.preprocessed.preqc
CPU=8

#sga preprocess --pe-mode 1 $FILE1 $FILE2 > $PREPROCESSED
#sga index -a ropebwt --no-reverse -t $CPU $PREPROCESSED
#sga preqc -t $CPU $PREPROCESSED > $GENOME
/usr/local/sga/src/bin/sga-preqc-report.py $GENOME /usr/local/sga/src/examples/preqc/*.preqc
