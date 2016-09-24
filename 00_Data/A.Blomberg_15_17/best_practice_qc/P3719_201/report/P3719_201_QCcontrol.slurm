#! /bin/bash -l
#SBATCH -A a2012043
#SBATCH -o P3719_201_QCcontrol.out
#SBATCH -e P3719_201_QCcontrol.err
#SBATCH -J P3719_201_QCcontrol.job
#SBATCH -p node -n 16 -C mem512GB
#SBATCH -t 3-00:00:00
#SBATCH --mail-user senthilkumar.panneerselvam@scilifelab.se
#SBATCH --mail-type=ALL
#SBATCH --qos=seqver

set -e
source activate DeNovoPipeline
module load bioinfo-tools
module load abyss/1.3.5
deNovo_pipeline.py --global-config /home/senthilp/opt/NouGAT/config_files/config_de_novo_uppmax.yaml --sample-config /pica/v17/a2012043_nobackup/private/projects/denovo/A.Blomberg_fucus_vesiculosus/01_QC/A.Blomberg_15_17/P3719_201/P3719_201_QCcontrol.yaml

