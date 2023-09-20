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

mkdir "C:/Server/PHP"

cd "C:/Server"

curl -O "https://raw.githubusercontent.com/Lovely-Experiences/scripts/main/apache/zips/apache-windows.zip"

curl -O "https://raw.githubusercontent.com/Lovely-Experiences/scripts/main/apache/zips/php.zip"

curl -O "https://raw.githubusercontent.com/Lovely-Experiences/scripts/main/apache/zips/content.zip"

unzip "./apache-windows.zip" -d "./Apache"

unzip "./php.zip" -d "./PHP"

unzip "./content.zip" -d "./Content"

rm "./apache-windows.zip"

rm "./php.zip"

rm "./content.zip"

"C:\Server\Apache\bin\httpd.exe" -k install | echo "Already installed service!"

net start Apache2.4

echo "Your server should now be running at http://localhost:5555, press any key to open the folder for your web project(s)."

read

clear