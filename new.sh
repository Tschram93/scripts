#!/bin/bash
# stop script if any step fails
cd ~/Desktop/Codes/scripts

repo=$1
file=$2

if [ -z "$repo" ] || [ -z "$file" ]; then
    echo ERROR: Enter repo name and filename \* \* \  for entire directory.
    exit 1
fi

git init;
git add .;
git branch -M main;
git status;



    git commit -m "first commit"
    git remote add origin https://github.com/Tschram93/"$repo".git
    git push -u origin main
    
    exit