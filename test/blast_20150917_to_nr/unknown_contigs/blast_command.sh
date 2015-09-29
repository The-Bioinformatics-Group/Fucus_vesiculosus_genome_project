#!/bin/bash

#$ -q node0
#$ -cwd
#$ -S /bin/bash

blastx -query /state/partition2/mtop/Fucus_vesiculosus_genome_project/test/blast_20150917_to_nr/unknown_contigs/unknown_contigs.fst -db /state/partition1/db/ncbi/nr/nr -num_alignments 10 -num_threads 38 -out /state/partition2/mtop/Fucus_vesiculosus_genome_project/test/blast_20150917_to_nr/unknown_contigs/F_vesiculosus_20150917_unknown_contigs_to_nr.BLASTx.txt
