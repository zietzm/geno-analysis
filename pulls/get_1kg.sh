#!/bin/bash

# Autosomes have identical file naming conventions
for i in {1..22}
do
    ftpdadr="ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/ALL.chr$i.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz"
    echo "Downloading Chromosome $i"
    wget $ftpdadr --output-document data/1000_genomes_20130502_release/chr$i.vcf.bgz
done

# MT X Y have different file name formatting
wget ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/ALL.chrY.phase3_integrated_v2a.20130502.genotypes.vcf.gz --output-document data/1000_genomes_20130502_release/chrY.vcf.bgz
wget ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/ALL.chrX.phase3_shapeit2_mvncall_integrated_v1b.20130502.genotypes.vcf.gz --output-document data/1000_genomes_20130502_release/chrX.vcf.bgz
wget ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/ALL.chrMT.phase3_callmom-v0_4.20130502.genotypes.vcf.gz --output-document data/1000_genomes_20130502_release/chrMT.vcf.bgz
