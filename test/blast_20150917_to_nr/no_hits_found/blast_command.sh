#!/bin/bash

#$ -q node0
#$ -cwd
#$ -S /bin/bash

blastx -query /state/partition2/mtop/Fucus_vesiculosus_genome_project/test/blast_20150917_to_nr/no_hits_found/no_hits_found.fst -db /state/partition1/db/ncbi/nr/nr -num_alignments 10 -num_threads 40 -out /state/partition2/mtop/Fucus_vesiculosus_genome_project/test/blast_20150917_to_nr/no_hits_found/F_vesiculosus_20150917_No-hits-found_to_nr.BLASTx.txt
