#!/bin/bash

if [[ ! -n $1 && ! -d $1 ]]; then
    echo 'Please provide the path to the qgis/docs directory with existing ./api dir inside (usually "./QGIS/build-master/doc")'
    exit 1
fi

if [[ ! -d "$1/api" ]]; then
    echo 'Missing "api" directory. Are you sure you turned on documentation?'
    exit 2
fi

rm -rf docs
mkdir -p docs
cp -r $1/api ./docs/api

