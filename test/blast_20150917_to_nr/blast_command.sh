#!/bin/bash

#$ -q node0
#$ -cwd
#$ -S /bin/bash

blastx -query /nobackup/data11/Fucus_vesiculosus_genome_project/test/20150917/Fucus_vesiculosus_20150917_novo_1000-longest.fa -db /state/partition1/db/ncbi/nr/nr -num_alignments 10 -num_threads 40 -query_loc 1-5000 -out /state/partition2/mtop/Fucus_vesiculosus_genome_project/test/blast_20150917_to_nr/F_vesiculosus_20150917_1000-longest_to_nr.BLASTx.txt
