#$ -cwd
#$ -q node0
#$ -S /bin/bash
#$ -pe mpich 30

module load SGA/v0.10.15

FILE1=../best_practice_qc/P7161_101/fastq_trimmed/P7161_101_S1_L001_R1_001.fastq
FILE2=../best_practice_qc/P7161_101/fastq_trimmed/P7161_101_S1_L001_R2_001.fastq
PREPROCESSED=Fucus_vesiculosus_A.Blomberg_16_15_MPS.preprocessed.fastq
GENOME=Fucus_vesiculosus_A.Blomberg_16_15_MPS.preprocessed.preqc

# Uncompress the raw files
gunzip ../best_practice_qc/P7161_101/fastq_trimmed/P7161_101_S1_L001_R1_001.fastq.gz
gunzip ../best_practice_qc/P7161_101/fastq_trimmed/P7161_101_S1_L001_R2_001.fastq.gz

sga preprocess --pe-mode 1 $FILE1 $FILE2 > $PREPROCESSED
sga index -a ropebwt --no-reverse -t $NSLOTS $PREPROCESSED
sga preqc -t $NSLOTS $PREPROCESSED > $GENOME
sga-preqc-report.py $GENOME /usr/local/packages/sga-0.10.15/src/examples/preqc/*.preqc

# Compress files again
gzip ../best_practice_qc/P7161_101/fastq_trimmed/P7161_101_S1_L001_R1_001.fastq
gzip ../best_practice_qc/P7161_101/fastq_trimmed/P7161_101_S1_L001_R2_001.fastq
