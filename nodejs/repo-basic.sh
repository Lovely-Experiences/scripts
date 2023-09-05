#!/bin/sh

@echo off

clear

name=""
repoUrl=""

echo "> What would you like to name the folder?"
read name
clear

echo "> What is the repo git URL?"
read repoUrl
clear

echo "Running... Please wait."

mkdir ./${name}
cd ./${name}
git clone ${repoUrl} .
npm ci

clear

echo "> Press ENTER to close..."
read
clear