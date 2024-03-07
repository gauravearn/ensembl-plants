#!/usr/bin/env bash
# -*- coding:  utf-8 -*-
# Author: Gaurav Sablok
# date: 2024-3-7
# change the plant name and fetch the index file by simply 
wget -f URLINK
for i in $(grep href index.html | cut -f 4 -d "/" | cut -f 2 -d "=" | cut -f 1 -d ">"); 
  do echo wget https://ftp.ensemblgenomes.ebi.ac.uk/pub/plants/release-58/fasta/vitis_vinifera/dna/$i; 
done | sed "s/\"/g" 
