#! /bin/bash
touch a.txt
snakemake -j 1                  # Works! makes c.txt
snakemake -j 1 --delete-all-output # removes b.txt and c.txt

snakemake -j 1                  # make c.txt
rm a.txt
snakemake -j 1 --delete-all-output # removes c.txt but not b.txt
