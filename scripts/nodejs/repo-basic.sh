#!/bin/sh

# Prevent command echos.
@echo off

# Clear console.
clear

# Create varaibles.
name=""
repoUrl=""

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

# Clone the repo and then clean install deps.
git clone ${repoUrl} .
npm ci

# Clear ouput and ask closing question.
clear
echo "> Press ENTER to close..."
read
clear