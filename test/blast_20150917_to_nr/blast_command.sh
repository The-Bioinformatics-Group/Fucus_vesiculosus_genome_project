#!/bin/bash

#$ -q high_mem
#$ -cwd
#$ -S /bin/bash

blastx -query SORTED-length_Fucus_vesiculosus_20150915_novo.fa -db /state/partition1/db/ncbi/nr -num_alignments 10 -num_threads 48 -query_loc 1-5000 -out F_vesiculosus_20150917_to_nr.BLASTx.txt
