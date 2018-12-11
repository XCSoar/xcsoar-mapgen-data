#!/bin/bash

#Hello I'm A comment

WORKDIR=~/public_html/

cd $WORKDIR
mv checksums checksums.bak

echo -n > checksums

for each in srtm3 osm vmap0 welt2000 manifest maps.config.js 
 do 
   find $each -type f -exec md5sum "{}" \; >> checksums 
done
