# Introcuction
The analysis presented [here](https://github.com/mtop/Fucus_vesiculosus_genome_project/blob/master/test/blast_20150917_to_nr/README.md) analysed the new *Fucus Vesiculosus* dataset on the contig level. Here I'm translating the number of contigs to number of reads by analysing the read coverage of the 1002 longest contigs in the [20150917](https://github.com/mtop/Fucus_vesiculosus_genome_project/tree/master/test/20150917) assembly.

# Result
There are still to many contigs in the unknown\_contigs.txt file. Can't figure it out and are moving on anyway ...
```bash
[mtop@albiorix read_coverage]$ wc -l fucus_contigs.txt bacterial_contigs.txt unknown_contigs.txt no-hits-found_contigs.txt 
440 fucus_contigs.txt
86 bacterial_contigs.txt
489 unknown_contigs.txt
52 no-hits-found_contigs.txt
1067 total
```

# Result
Mean and median read coverage for contigs in the four chategories (calculated using R).
* Fucus: 541	296
