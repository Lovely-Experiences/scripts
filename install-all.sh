#!/bin/bash

# Install's all the sh scripts in this repository.
declare -a files
files[0]="nodejs/repo-basic.sh"

path="./scripts-$(date +%s)"
url="https://raw.githubusercontent.com/Lovely-Experiences/scripts/main/"

mkdir ${path}
cd ${path}

for i in ${files[@]}
do
    echo "Downloading... ${i}"
    curl -O ${url}${i} || wget -O ${url}${i}
done

echo "Finished! -> $(pwd)"