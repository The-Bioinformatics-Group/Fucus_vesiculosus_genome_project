# Introduction
First analysis of the new dataset. Do we continue sequencing from the DNA that was used for this dataset?

# Result
* Read count:          493722666
* Nucleotide count:  60931013362
* Word size:                  26
* Bubble size:                50
* Number of contigs:	 1428440


(If you insist...)
`[mtop@albiorix 20150915]$ N50.pl Fucus_vesiculosus_20150915_novo.fa
N50: 857`

# Notes
There was an error in the script creating the path to the clc_mapping output file. The two analyses running simultaniously last night was therefore writing to the same .cas file. The mapping step was therefore terminated and no stats for coverage or clc_sequence_info output is therefore available.
