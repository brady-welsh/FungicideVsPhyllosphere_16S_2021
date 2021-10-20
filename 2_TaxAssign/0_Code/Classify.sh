#!/bin/bash
#SBATCH -p batch
#SBATCH -N 1
#SBATCH -n 8
#SBATCH --time=03:00:00
#SBATCH --mem=128GB

#Source activate qiime2-2021.8

export TMPDIR=/hpcfs/users/$USER/0_Programs/scratch/tmp

mkdir -p $TMPDIR

qiime feature-classifier classify-consensus-vsearch \
	--p-threads 8 \
	--i-query /hpcfs/users/a1688124/1_FvP/1_16S/1_Dada2/FeatureData-Sequence.qza  \
	--i-reference-reads /hpcfs/users/a1688124/1_FvP/1_16S/2_TaxAssign/1_Silva138/silva-138-99-seqs-515-806.qza \
	--i-reference-taxonomy /hpcfs/users/a1688124/1_FvP/1_16S/2_TaxAssign/1_Silva138/silva-138-99-tax-515-806.qza \
	--o-classification /hpcfs/users/a1688124/1_FvP/1_16S/2_TaxAssign/FeatureData-Taxonomy.qza 
