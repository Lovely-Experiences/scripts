#!/bin/bash

# Install's all the sh scripts in this repository.
declare -a files
files[0]="nodejs/repo-basic.sh"

for i in ${files[@]}
do
    echo $i
done