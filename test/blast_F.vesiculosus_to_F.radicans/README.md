# Introduction
I've extracted the 100 longest sequences from the [F. vesiculosus assembly 20150915](https://github.com/mtop/Fucus_vesiculosus_genome_project/tree/master/test/20150915) and BLASTed them to the [F. radicans assembly 20150915](https://github.com/mtop/Fucus_radicans_genome_project/tree/master/test/20150915) and extracted the results from the best match for each sequence.

# Material and methods
The grep function of fp.py is currently not working well, so the 100 longest sequences where extracted usign the following method:

```bash
$ fasta2tab Fucus_vesiculosus_20150915_novo.fa | grep -f asdf | tab2fasta > intermediate-100_longest.fa
$ ./fp.py --grep asdf intermediate-100_longest.fa > Fucus_vesiculosus_20150915_novo-100_longest.fa
$ grep -c ">" Fucus_vesiculosus_20150915_novo-100_longest.fa
100
```

# Result
The result is presented in [parsed_blast_result.txt](https://github.com/mtop/Fucus_vesiculosus_genome_project/blob/master/test/blast_F.vesiculosus_to_F.radicans/parsed_blast_result.txt), that lists the first/best blast match between query sequences from F. vesiculosus to subject sequences of F. radicans.
