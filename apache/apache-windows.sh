#!/bin/bash

if [ -d "C:/Server" ];
then
	echo "Server folder is already present, uninstalling."
    rm -rf C:/Server
fi
clear
mkdir "C:/Server"
mkdir "C:/Server/Apache"
mkdir "C:/Server/Content"
cd "C:/Server"
curl -O "https://raw.githubusercontent.com/Lovely-Experiences/scripts/main/apache/apache-windows.zip"
unzip "./apache-windows.zip" -d "./Apache"
clear
echo "Finished installation, press any key to open the folder for your web project(s)."
read
start %SystemRoot%\explorer.exe "C:/Server/Content"