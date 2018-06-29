# First 'successful' assembly of __Fucus vesiculosus__ data using Platanus assembler
* Assembly performed on Hebbe (C3SE)
* Note: this assembly was performed with data which had not been filtered for contaminants (e.g. Bacteria)

## Assembly statistics

Statistics before and after contaminant filtering of contigs

|                    |  **Before**   | **After** |
|--------------------|---------------|-----------|
| Assembly size (bp) | 2,083,786,648 | 5,253,154 |
| % gap characters   |          1.77 |      0.72 |
| Number of contigs  |     5,600,506 |    11,991 |

### Decontamination
Contaminant filtering was performed by running BLASTn on the assembly (nt database), then running the
result through MEGAN and retaining only the contigs labelled as Eukaryote
