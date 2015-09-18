# Introduction
Testing a new assembly of the first F. vesiculosus dataset with the maximum word size (k-mer size) of 64 accepted by CLC. The [preqc graph](https://github.com/mtop/Fucus_vesiculosus_genome_project/blob/master/data/A.Blomberg_15_01/preqc/preqc_report.pdf) suggest that an even larger k-mer would result in longer contigs.

# Result

* Read count:          493722666
* Nucleotide count:  60931013362
* Word size:                  64
* Bubble size:                50
* Number of contigs:	

# Notes
The analysis seems to have had RAM memory issues according to [Fucus_vesiculosus_20150917.err.log](https://github.com/mtop/Fucus_vesiculosus_genome_project/blob/master/test/20150917/Fucus_vesiculosus_20150917.err.log). However, CLC started the step "Saving contigs..." at 02:55:31 last night, and the analysis finished at 09:02:21 this morning. Hence, no crash seems to have occured.
