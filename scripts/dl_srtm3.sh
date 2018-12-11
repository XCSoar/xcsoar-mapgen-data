#!/bin/sh

lftp -e 'mirror -c /SRTM_v41/SRTM_Data_GeoTIFF/ SRTM_Data_GeoTIFF/ ; exit' ftp://srtm.csi.cgiar.org
