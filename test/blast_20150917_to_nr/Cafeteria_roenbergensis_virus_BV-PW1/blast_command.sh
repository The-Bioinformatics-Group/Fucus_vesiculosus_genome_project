#!/bin/bash

#$ -q node0
#$ -cwd
#$ -S /bin/bash
#$ -pe mpich 38

blastn -query /nobackup/data11/Fucus_vesiculosus_genome_project/test/blast_20150917_to_nr/Cafeteria_roenbergensis_virus_BV-PW1/GU244497.fasta -db /state/partition2/mtop/Fucus_vesiculosus_genome_project/test/20150917/Fucus_vesiculosus_20150917_novo.fa -num_alignments 10 -num_threads 38 -out /nobackup/data11/Fucus_vesiculosus_genome_project/test/blast_20150917_to_nr/Cafeteria_roenbergensis_virus_BV-PW1/Cafeteria_roenbergensis_virus_BV-PW1_20_20150917.BLASTn.txt
