#!/bin/bash

clear
mkdir "C:/Server"
mkdir "C:/Server/Apache"
mkdir "C:/Server/Content"
cd "C:/Server"
curl --insecure -O https://raw.githubusercontent.com/Lovely-Experiences/scripts/main/apache/apache-windows.zip
unzip "./apache-windows.zip" -d "./Apache"
