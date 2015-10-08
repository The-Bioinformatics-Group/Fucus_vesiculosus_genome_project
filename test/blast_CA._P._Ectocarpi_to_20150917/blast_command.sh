#!/bin/bash

#$ -q high_mem
#$ -cwd
#$ -S /bin/bash
#$ -pe mpich 40

blastn -query /nobackup/data11/Fucus_vesiculosus_genome_project/data/Ectocarpus_siliculosus/HG966617.fasta -db ../20150917/Fucus_vesiculosus_20150917_novo.fa -num_threads 40 -out ca._p._ectocarpi_to_20150917.BLASTn.txt
