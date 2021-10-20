#!/bin/bash
#SBATCH -p batch
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --time=00:10:00
#SBATCH --mem=500MB

#Source activate qiime2-2021.8

export TMPDIR=/hpcfs/users/$USER/0_Programs/scratch/tmp

mkdir -p $TMPDIR

qiime feature-table filter-samples \
  	--i-table /hpcfs/users/a1688124/1_FvP/1_16S/1_Processing/3_Filtering/FeatureTable-Frequency_Filter5.qza \
  	--m-metadata-file /hpcfs/users/a1688124/1_FvP/1_16S/1_Processing/3_Filtering/1_MetaData/sample-metadata-NoPMA.tsv \
  	--o-filtered-table /hpcfs/users/a1688124/1_FvP/1_16S/2_Analysis/2_NoPMA/0_FeatureTable/FeatureTable_Frequency-NoPMA.qza

qiime feature-table filter-samples \
  	--i-table /hpcfs/users/a1688124/1_FvP/1_16S/1_Processing/3_Filtering/FeatureTable-Frequency_Filter5.qza \
  	--m-metadata-file /hpcfs/users/a1688124/1_FvP/1_16S/1_Processing/3_Filtering/1_MetaData/sample-metadata-PMA.tsv \
  	--o-filtered-table /hpcfs/users/a1688124/1_FvP/1_16S/2_Analysis/3_PMA/0_FeatureTable/FeatureTable_Frequency-PMA.qza
