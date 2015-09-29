# Introduction
Blasting the full length sequences in chategory **?** the NCBI nr database.

### Input data
```bash
grep "?" ../result.txt | grep -v Fucus | grep -v Bact | cut -f 1 > unknown_contigs.txt
```
