#!/usr/bin/env bash
source set_env_vars.sh
usgs login $USGS_USERNAME $USGS_PASSWORD
awk -F"," '(NR > 1){ print $1 }' data/tiles.csv | xargs -p -n 1 usgs download-url "http://earthexplorer.usgs.gov" 
