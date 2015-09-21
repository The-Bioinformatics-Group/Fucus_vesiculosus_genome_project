#!/bin/bash

# Will run this on the NAS

#$ -cwd
#$ -q node0
#$ -S /bin/bash

blastn -num_threads 20 -outfmt '7 std qlen slen' -query ../20150915/Fucus_vesiculosus_20150915_novo-100_longest.fa -db /nobackup/data11/Fucus_radicans_genome_project/assemblies/Fucus_radicans_20150915_novo.fa -out F_vesiculosus_20150915_100_longest_to_F_radicans_20150915.BLASTn.txt
