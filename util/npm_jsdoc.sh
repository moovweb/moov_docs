#!/bin/bash

for dir in ./node_modules/*
do
    if [[ $dir == *"moov_"* ]]
    then
      echo "running jsdoc on $dir"
      ./node_modules/.bin/jsdoc $dir -t ./node_modules/latodoc -c $dir/util/jsdoc_config.json -d ./docs/$dir $dir/lib $dir/README.md
    else
      echo "skipping $dir"
    fi
done