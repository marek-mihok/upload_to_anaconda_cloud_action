#!/bin/bash

set -ex
set -o pipefail

# VARIABLES
PLATFORMS=($INPUT_PLATFORMS)

echo "Uploading conda packages to anaconda cloud"

conda config --set anaconda_upload yes
anaconda login --username $INPUT_CONDAUSERNAME --password $INPUT_CONDAPASSWORD

find $INPUT_PACKAGESDIR -name *.tar.bz2 | while read file
do
    echo $file
    anaconda upload $file
done

