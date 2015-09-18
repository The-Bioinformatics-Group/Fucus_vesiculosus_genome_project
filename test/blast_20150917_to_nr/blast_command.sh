#!/bin/bash

#$ -q high_mem
#$ -cwd
#$ -S /bin/bash

blastx -query /nobackup/data11/Fucus_vesiculosus_genome_project/test/20150915/SORTED-length_Fucus_vesiculosus_20150915_novo.fa -db /state/partition1/db/ncbi/nr -num_alignments 10 -num_threads 48 -query_loc 1-5000 -out /state/partition2/mats/Fucus_vesiculosus_genome_project/test/blast_20150917_to_nr/F_vesiculosus_20150917_to_nr.BLASTx.txt
