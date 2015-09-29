# Introduction
Blasting the first 5000 bp of the 1002 longest contigs from assembly 20150917 to the NCBI nonredundant database using blastx, in order to examine the bacterial content of the sequences.

# Result

The blast results have been divided into the following four categories:

* Fucus (27.9%): Best match to Ectocarpus siliculosus or Fucus vesiculosus
* Bact (0.8%): Good match(es) to any bacterial sequence
* ? (39.7%: Ambigous blast result. Often matches to many different types of organisms.
* No hits found (27.7%)

Note: Contigs in category "No hits found" are most likely of eukaryotic origin as the average bacterial gene length is 950 bp (ref.) and bacterial genes are ususally densly packed. Hence, I would expect that 5000 bp of a bacterial sequence would contain a coding region, and hence find a blast match.

### Update 2015-09-28
The previous analysis resulted in many contigs not having a blast match in the first 5000 bp. I'm therefore BLASTing the full length sequences of these contigs to the nr database. The results can be found in directory [no_hits_found.](https://github.com/mtop/Fucus_vesiculosus_genome_project/tree/master/test/blast_20150917_to_nr/no_hits_found) This analysis is very slow (why only 5000 bp was blasted in the first analysis) and is expected to finish late Wednesday evening (2015-09-30). 

### Update 2015-09-29
150 of 277 sequences have been analysed in 18 hours.



