#!/bin/bash

#$ -q high_mem
#$ -pe mpich 54
#$ -cwd
#$ -S /bin/bash

blastn -query ../blast_20150917_to_nr/unknown_contigs/unknown_contigs.fst -db ../../data/Littorina/contigsAbove500.fasta -num_alignments 10 -num_threads 54 -outfmt '7 std qlen slen' -out unknown_contigs_to_Litorina-contigsAbove500.BLASTn.txt
