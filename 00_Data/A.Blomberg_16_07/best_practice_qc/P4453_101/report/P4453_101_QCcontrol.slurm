#! /bin/bash -l
#SBATCH -A a2012043
#SBATCH -o P4453_101_QCcontrol.out
#SBATCH -e P4453_101_QCcontrol.err
#SBATCH -J P4453_101_QCcontrol.job
#SBATCH -p node -n 16
#SBATCH -t 1-00:00:00
#SBATCH --mail-user senthilkumar.panneerselvam@scilifelab.se
#SBATCH --mail-type=ALL
#SBATCH --qos=seqver

set -e
source activate DeNovoPipeline
module load bioinfo-tools
module load abyss/1.3.5
deNovo_pipeline.py --global-config /home/senthilp/opt/NouGAT/config_files/config_de_novo_uppmax.yaml --sample-config /pica/v17/a2012043_nobackup/private/projects/denovo/A.Blomberg_16_07/P4453_101/P4453_101_QCcontrol.yaml

