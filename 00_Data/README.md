# Data

| Sequence project   | Insert size (bp) | Library type             | Raw read pairs (M) | Filtered read pairs (M) |
|--------------------|------------------|--------------------------|--------------------|-------------------------|
| A.Blomberg\_15\_01 |  180             | Illumina TruSeq PCR-free | 265.65             | 192.21 (38X)                    |
| A.Blomberg\_15\_17 |  350             | Illumina TruSeq Nano     | 475.11             | 357.96 (88X)                    |
| A.Blomberg\_15\_20 |  5-8k (MPL)      | Nextera Mate-Pair        | 435.32             |  77.05 (14X)                    |
| A.Blomberg\_16\_07 |  550             | Illumina TruSeq Nano     | 152.89             | 141.91                          |
| A.Blomberg\_16\_15 |  3k (MPS)        | Nextera Mate-Pair        | 356.04             |  83.43 (15X)                    |

## Number of bases included in teh assembly

| Sequence project   | Number fo bases  | Estimated genome size |
|--------------------|------------------|-----------------------|
| A.Blomberg\_15\_01 | 45709584530      | 1.24 Gb
| A.Blomberg\_15\_17 | 105223344456     | 1.14 Gb
| A.Blomberg\_15\_20 | 17280272837      | 1.1 Gb
| A.Blomberg\_16\_07 | 74537114743	| 1.1 Gb
| A.Blomberg\_16\_15 | 17782780744      | ~1.3 Gb

Genome size used for calculating the coverage: 1.2 Gb

The number of bases in the read files whas calculated using the command:
```bash
zcat *.fq.gz | grep "^@" -A 1 | grep -v "^@" - | grep -v "--" - | tr -d '\n' | wc -c
```
