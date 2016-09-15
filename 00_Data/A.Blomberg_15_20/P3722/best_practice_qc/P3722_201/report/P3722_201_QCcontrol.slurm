#! /bin/bash -l
#SBATCH -A ngi2016003
#SBATCH -o P3722_201_QCcontrol.out
#SBATCH -e P3722_201_QCcontrol.err
#SBATCH -J P3722_201_QCcontrol.job
#SBATCH -p node -n 16
#SBATCH -t 1-00:00:00
#SBATCH --mail-user ngi_pipeline_operators@scilifelab.se
#SBATCH --mail-type=ALL
#SBATCH --qos=normal

set -e
source activate NGI
module load bioinfo-tools
module load abyss/1.3.5
deNovo_pipeline.py --global-config /lupus/ngi//sw/NouGAT/config_files/config_de_novo_irma.yaml --sample-config /lupus/proj/ngi2016003/nobackup/NGI/ANALYSIS/denovo/A.Blomberg_15_20/P3722_201/P3722_201_QCcontrol.yaml

