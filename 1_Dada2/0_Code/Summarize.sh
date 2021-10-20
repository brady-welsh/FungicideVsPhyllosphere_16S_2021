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
 	--i-table /hpcfs/users/a1688124/1_FvP/1_16S/1_Dada2/FeatureTable-Frequency.qza \
 	--o-visualization /hpcfs/users/a1688124/1_FvP/1_16S/1_Dada2/1_Summaries/FeatureTable-Frequency.qzv \
	--m-sample-metadata-file /hpcfs/users/a1688124/1_FvP/1_16S/0_Import/sample-metadata.tsv

qiime feature-table tabulate-seqs \
 	--i-data /hpcfs/users/a1688124/1_FvP/1_16S/1_Dada2/FeatureData-Sequence.qza \
 	--o-visualization /hpcfs/users/a1688124/1_FvP/1_16S/1_Dada2/1_Summaries/FeatureData-Sequence.qzv

qiime metadata tabulate \
 	--m-input-file /hpcfs/users/a1688124/1_FvP/1_16S/1_Dada2/SampleData-Dada2Stats.qza \
 	--o-visualization /hpcfs/users/a1688124/1_FvP/1_16S/1_Dada2/1_Summaries/SampleData-Dada2Stats.qzv
