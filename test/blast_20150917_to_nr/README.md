# Introduction
Blasting the first 5000 bp of the 1002 longest contigs from assembly 20150917 to the NCBI nonredundant database using blastx, in order to examine the bacterial content of the sequences.

# Result

The blast results have been divided into the following four categories:

* Fucus (28.9%): Best match to *Ectocarpus siliculosus* or *Fucus vesiculosus*
* Bact (8.1%): Good match(es) to any bacterial sequence
* ? (36.1%: Ambigous blast result. Often matches to many different types of organisms.
* No hits found (27.7%)

**Note:** Contigs in category "No hits found" are most likely of eukaryotic origin as the average bacterial gene length is 950 bp (ref.) and bacterial genes are ususally densly packed. Hence, I would expect that 5000 bp of a bacterial sequence would contain a coding region, and hence find a blast match.

**Note:** Many of the blast matches in category **?** was to various species of fungi or nematods. 

### Update 2015-09-28
The previous analysis resulted in many contigs not having a blast match in the first 5000 bp (category **No hits found**). I'm therefore BLASTing the full length sequences of these contigs to the nr database. The results can be found in directory [no_hits_found.](https://github.com/mtop/Fucus_vesiculosus_genome_project/tree/master/test/blast_20150917_to_nr/no_hits_found) This analysis is very slow (why only 5000 bp was blasted in the first analysis) and is expected to finish late Wednesday evening (2015-09-30). 

### Update 2015-09-29
150 of 277 sequences have been analysed in 18 hours.

# Result II
Here are the updated results after blasting the full lengt sequences in category **No hits found**.

* Fucus: 36.8%
* Bact: 8.4%
* ?: 48.8%
* No hits found: 5.2%

# Result III
Also the full length contigs in category **?** was blasted to the NCBI nr database. Here is the updated table that also includes this result.

* Fucus: 43.9%
* Bact: 8.4%
* ?: 41.1%
* No hits found: 5.7%

**Note:** Very few bacterial sequences where found among the 1002 longest contigs in the [20150917 assembly.](https://github.com/mtop/Fucus_vesiculosus_genome_project/tree/master/test/20150917) Also, very few contigs had no BLAST match to the sequences in the NCBI nr database. Many of the contigs in category **?** had poor matches to species like *Aplysia californica, Oryza sativa, Condrus cripspus* etc. (e.g. see the [this](https://github.com/mtop/Fucus_vesiculosus_genome_project/blob/master/test/blast_20150917_to_nr/F_vesiculosus_20150917_1000-longest_to_nr.BLASTx.txt) blast result for more details). Intergenic regions of *F. vesiculosus* will probably fall in this category as they may contain ORF's that would result in poor blast matches. The number of *F. vesiculosus* contigs is therefore likely underestimated to some degree.

# Result IV
Mean and median read coverage for contigs in the four chategories (calculated using R). More details [here.](https://github.com/mtop/Fucus_vesiculosus_genome_project/tree/master/test/blast_20150917_to_nr/read_coverage)

| Chategory | Mean | Median |
|-----------|------|--------|
| Fucus     | 541  | 296    |
| Bacterial | 627  | 274    |
| ?         | 554  | 236    |
| No hits   | 440  | 263    |

### Test


### TEST

*This* **is** a [test](https://github.com/The-Bioinformatics-Group/Fucus_vesiculosus_genome_project/raw/master/test/blast_20150917_to_nr/word_cloud.pdf)
