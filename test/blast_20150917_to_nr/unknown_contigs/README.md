# Introduction
Blasting the full length sequences in chategory **?** the NCBI nr database.

### Input data
```bash
grep "?" ../result.txt | grep -v Fucus | grep -v Bact | cut -f 1 > unknown_contigs.txt
```

```bash
fp.py --grep unknown_contigs.txt ../../20150917/Fucus_vesiculosus_20150917_novo_1000-longest.fa > unknown_contigs.fst
```
