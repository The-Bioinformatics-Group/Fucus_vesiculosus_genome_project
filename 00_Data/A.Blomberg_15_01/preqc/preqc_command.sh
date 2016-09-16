#$ -cwd
#$ -q Annotation-3
#$ -S /bin/bash
#$ -pe mpich 20

FILE1=../best_practice_qc/P1887_101/fastq_trimmed/7_150521_AC6VGLANXX_P1887_101_1.fastq
FILE2=../../best_practice_qc/P1887_101/fastq_trimmed/7_150521_AC6VGLANXX_P1887_101_2.fastq
PREPROCESSED=F_ves_A.Blomberg_15_01_180bp.preprocessed.fastq
GENOME=F_ves_A.Blomberg_15_01_180bp.preprocessed.preqc

sga preprocess --pe-mode 1 $FILE1 $FILE2 > $PREPROCESSED
sga index -a ropebwt --no-reverse -t $NSLOTS $PREPROCESSED
sga preqc -t $NSLOTS $PREPROCESSED > $GENOME
sga-preqc-report.py $GENOME /usr/local/bin/SGA-0.10.13/src/examples/preqc/*.preqc
