#!/usr/bin/env bash

FILE=data/armenia-latest.osm.pbf
if test -f "$FILE"; then
    printf "OSM Data\n$FILE exists.\n\n"
else
    printf "OSM Data\nDownloading $FILE......\n\n"
    cd data && wget "https://download.geofabrik.de/asia/armenia-latest.osm.pbf"
fi

poetry run ./get_usgs_data.sh

