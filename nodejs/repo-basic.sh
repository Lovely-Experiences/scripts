#!/bin/bash

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

# Ask for git URL.
echo "> What is the git URL?"
read repoUrl
clear

# Error function.
error_result() {
    echo "Error! $1"
    exit 1
}

# Create directory, then open it.
mkdir ./${name} || error_result "> Failed to create directory."
cd ./${name}

# Ask for confirmation.
echo "> Are you sure?"
echo "> Repo: ${repoUrl}"
echo "> Path: $(pwd)"
read -p "> (yes/no): " answer
case $answer in
    [Yy]* ) clear;;
    * ) clear; cd -; rmdir ./${name}; exit 1;;
esac

# Echo node and npm version.
echo "> Versions..."
echo "Node.js $(node -v)"
echo "npm v$(npm -v)"

# Clone the repo.
echo "> Cloning repository..."
git clone ${repoUrl} .

# Clean install deps.
echo "> Installing dependencies..."
npm ci

# Ask closing question.
echo "> Press ENTER to close..."
read
clear
