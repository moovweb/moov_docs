#!/bin/bash

for dir in ./node_modules/*/
do
    (cd $dir && npm run jsdoc)
done