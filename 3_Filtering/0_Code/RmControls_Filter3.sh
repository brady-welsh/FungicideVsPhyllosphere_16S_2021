#!/bin/bash
#SBATCH -p batch
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --time=00:30:00
#SBATCH --mem=1GB

#Source activate qiime2-2021.8

export TMPDIR=/hpcfs/users/$USER/0_Programs/scratch/tmp

mkdir -p $TMPDIR

qiime feature-table filter-samples \
  --i-table /hpcfs/users/a1688124/1_FvP/1_16S/3_Filtering/FeatureTable-Frequency_Filter2.qza \
  --m-metadata-file /hpcfs/users/a1688124/1_FvP/1_16S/3_Filtering/1_MetaData/samples-to-keep.tsv \
  --o-filtered-table /hpcfs/users/a1688124/1_FvP/1_16S/3_Filtering/FeatureTable-Frequency_Filter3
