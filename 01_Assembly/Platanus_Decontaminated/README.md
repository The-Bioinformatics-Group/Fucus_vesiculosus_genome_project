# Platanus assembly attempt using contaminant-filtered (and sometimes downsampled) libraries

Downsampling of paired-end libraries performed because the assembly step (first step in Platanus) was taking
more than one week to complete; one week is the time limit for a job on C3SE's Hebbe cluster.

Downsampled libraries were sized to ensure at least 20x coverage per library

Libraries used:
* 180bp PE library
  * Bacterial reads removed
  * Downsampled to 100,000,000 read pairs
  * Used in assembly and gap closing steps
* 350bp PE library
  * Bacterial reads removed
  * Downsampled to 79,470,199 read pairs
  * Used in assembly and gap closing steps
* 2x 550bp PE libraries
  * Bacterial reads removed
  * Downsampled to 4,543,3595 and 4,5254,333 read pairs, respectively
  * Used in assembly and gap closing steps
* Long MP library
  * Bacterial reads removed
  * No downsampling of data
  * Used in scaffolding and gap closing steps
* Short MP library
  * Bacterial reads removed
  * No downsampling of data
  * Used in scaffolding and gap closing steps

## Results

| Total contigs     | 5,393,208 |
|-------------------|-----------|
| Contigs > 10000bp |     9,576 |
| Contigs > 1000bp  |   223,269 |
| Contigs > 200bp   | 2,600,070 |
|        N50        |     1,115 |
