# First 'successful' assembly of __Fucus vesiculosus__ data using Platanus assembler
* Assembly performed on Hebbe (C3SE)
* Note: this assembly was performed with data which had not been filtered for contaminants (e.g. Bacteria)

## Assembly statistics

Statistics before and after contaminant filtering of contigs

|                    | **Full assembly** | **Eukaryote** |  **No Hits**  | **Not Assigned** |
|--------------------|-------------------|---------------|---------------|------------------|
| Assembly size (bp) |     2,083,786,648 |   437,664,168 | 1,490,021,980 |       14,369,095 |
| % gap characters   |              1.77 |          5.55 |          0.22 |             4.08 |
| Number of contigs  |         5,600,506 |       491,880 |     4,982,170 |            7,804 |


### Decontamination
Contaminant filtering was performed by running BLASTn on the assembly (nt database), then running the
result through MEGAN and retaining only the contigs labelled as Eukaryote
