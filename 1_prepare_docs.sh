#!/bin/bash

if [[ ! -n $1 && ! -d $1 ]]; then
    echo 'Please provide the path to the qgis/docs directory with existing "Doxyfile" inside (usually "./QGIS/build-master/doc")'
    exit 1
fi

if [[ ! -f "$1/Doxyfile" ]]; then
    echo 'Missing "Doxyfile".'
    exit 2
fi

MCSS_DOXYGEN="doxygen_mcss"

if [[ -n $2 ]]; then
    MCSS_DOXYGEN=$2
fi


cp ./Doxyfile-mcss $1

${MCSS_DOXYGEN} $1/Doxyfile-mcss
