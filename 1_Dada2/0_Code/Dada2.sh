#!/bin/bash
#SBATCH -p batch
#SBATCH -N 1
#SBATCH -n 8
#SBATCH --time=03:00:00
#SBATCH --mem=128GB

#source activate qiime2-2021.8

export TMPDIR=/hpcfs/users/$USER/0_Programs/scratch/tmp

mkdir -p $TMPDIR

qiime dada2 denoise-paired \
	--i-demultiplexed-seqs /hpcfs/users/a1688124/1_FvP/1_16S/0_Import/pairedend-demux.qza \
	--p-n-threads 8 \
 	--p-trim-left-f 0 \
 	--p-trim-left-r 0 \
 	--p-trunc-len-f 250 \
 	--p-trunc-len-r 250 \
 	--o-table /hpcfs/users/a1688124/1_FvP/1_16S/1_Dada2/FeatureTable-Frequency.qza \
 	--o-representative-sequences /hpcfs/users/a1688124/1_FvP/1_16S/1_Dada2/FeatureData-Summary.qza \
 	--o-denoising-stats /hpcfs/users/a1688124/1_FvP/1_16S/1_Dada2/Stats.qza \
	--verbose
