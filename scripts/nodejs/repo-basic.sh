#!/bin/sh

# Prevent command echos.
@echo off

# Clear console.
clear

# Create varaibles.
name=""
repoUrl=""
confirm=""

# Ask for folder name.
echo "> What would you like to name the folder?"
read name
clear

# Ask for repo git URL.
echo "> What is the repo git URL?"
read repoUrl
clear

# Create directory, then open it.
mkdir ./${name}
cd ./${name}

# Ask for confirmation.
echo "> Are you sure you would like to clone (${repoUrl}) into $(pwd)? (Y/N)"
read confirm
if [ $confirm == "Y" ]; then
    clear
else
    clear
    cd -
    rmdir ./${name}
    exit 1
fi

# Clone the repo and then clean install deps.
git clone ${repoUrl} .
npm ci

# Clear ouput and ask closing question.
clear
echo "> Press ENTER to close..."
read
clear