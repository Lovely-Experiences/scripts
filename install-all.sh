#!/bin/bash

# Install's all the sh scripts in this repository.
declare -a files
files[0]="nodejs/node-repo-basic.sh"
files[1]="random/console-rainbow.sh"
files[2]="apache/apache-windows.sh"

path="./scripts-$(date +%s)"
url="https://raw.githubusercontent.com/Lovely-Experiences/scripts/main/"

mkdir ${path}
cd ${path}

for i in ${files[@]}
do
    echo "Downloading... ${i}"
    curl -s -O ${url}${i} || wget --no-check-certificate -q -O ${url}${i}
done

echo "Finished! -> $(pwd)"