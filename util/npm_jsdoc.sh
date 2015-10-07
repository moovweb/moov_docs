#!/bin/bash

for dir in ./node_modules/*
do
    if [[ $dir == *"moov_"* ]]
    then
      echo "running jsdoc on $dir"
      BASENAME=$(basename "$dir")
      ./node_modules/.bin/jsdoc $dir -c ./util/jsdoc_config.json -d ./docs/$BASENAME $dir/lib $dir/README.md
    else
      echo "skipping $dir"
    fi
done