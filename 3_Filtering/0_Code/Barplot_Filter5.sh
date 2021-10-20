#!/bin/bash
#SBATCH -p batch
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --time=00:30:00
#SBATCH --mem=8GB

#Source activate qiime2-2021.8

export TMPDIR=/hpcfs/users/$USER/0_Programs/scratch/tmp

mkdir -p $TMPDIR

qiime taxa barplot \
	--i-table /hpcfs/users/a1688124/1_FvP/1_16S/3_Filtering/FeatureTable-Frequency_Filter5.qza \
	--i-taxonomy /hpcfs/users/a1688124/1_FvP/1_16S/2_TaxAssign/FeatureData-Taxonomy.qza \
	--o-visualization /hpcfs/users/a1688124/1_FvP/1_16S/3_Filtering/2_Summary/Filter5_Barplot.qzv
