#!/bin/bash
#SBATCH -p batch
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --time=00:05:00
#SBATCH --mem=500MB

#Source Activate qiime2-2021.8

export TMPDIR=/hpcfs/users/$USER/0_Programs/scratch/tmp

mkdir -p $TMPDIR

qiime feature-table summarize \
 	--i-table /hpcfs/users/a1688124/1_FvP/1_16S/3_Filtering/FeatureTable-Frequency_Filter5.qza \
 	--o-visualization /hpcfs/users/a1688124/1_FvP/1_16S/3_Filtering/2_Summary/FeatureTable-Frequency_Filter5.qzv \
	--m-sample-metadata-file /hpcfs/users/a1688124/1_FvP/1_16S/0_Import/sample-metadata.tsv
