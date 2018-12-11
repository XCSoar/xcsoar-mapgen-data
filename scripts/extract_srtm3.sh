#!/bin/bash

WORKDIR=/dev/shm
OUTDIR=~/public_html/srtm3/


cd ~/public_html/scripts/SRTM_Data_GeoTIFF/

for each in $(ls -1 *.zip)
   do
    basename=$(basename -s .zip $each)
   if ! [ -f "$OUTDIR/${basename}.tif" ]; then 
	    ls $OUTDIR/${basename}.tif
	    unzip -o $each -x "readme.txt" '*.hdr' '*.tfw' -d $WORKDIR
	    mv $WORKDIR/${basename}.tif $WORKDIR/uncompressed-${basename}.tif
	    gdal_translate -co COMPRESS=deflate $WORKDIR/uncompressed-$basename.tif $WORKDIR/$basename.tif 
	    rm $WORKDIR/uncompressed-$basename.tif
	    mv $WORKDIR/$basename.tif $OUTDIR/${basename}.tif 
	    ls $OUTDIR/${basename}.tif
   fi
done
