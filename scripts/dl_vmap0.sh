#!/bin/sh

WORKDIR=~/public_html/

mkdir -p $WORKDIR/vmap0
cd $WORKDIR/vmap0
wget http://gis-lab.info/data/vmap0/eur.7z
wget http://gis-lab.info/data/vmap0/noa.7z
wget http://gis-lab.info/data/vmap0/soa.7z
wget http://gis-lab.info/data/vmap0/sas.7z
