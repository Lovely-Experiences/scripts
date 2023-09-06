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
echo "> Are you sure?\n> Repo: (${repoUrl})\n> Path: $(pwd)\n> (Y/N): "
read confirm

# Check if the variable is the right character.
if [ $confirm='Y' || $confirm='y' ]; then
    clear
else
    clear
    cd -
    rmdir ./${name}
    clear
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
