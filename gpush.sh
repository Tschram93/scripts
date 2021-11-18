#!/bin/bash
# stop script if any step fails
cd ~/Desktop/Codes/scripts

repo=$1
file=$2

if [ -z "$repo" ] || [ -z "$file" ]; then
    echo ERROR: Enter repo name and filename \* \* \  for entire directory.
    exit 1
fi

git add .;
git status;

read -p "Would you like to push changes?: " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]; then
        git add .
    elif [[ $REPLY =~ ^[Nn]$ ]]; then
        printf "\n No Changes Pushed"
        sleep 2
        exit
    fi

printf "\n add message \n"
read -r message

    git commit -m "$message"
    git push https://github.com/Tschram93/"$repo".git
    
    exit
