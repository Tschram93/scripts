#!/usr/bin/env bash

cd ~/Desktop/Codes/scripts

git add . 

DATE=$(date)

git commit -m "changes made on $DATE"

git push

echo SUCCESSFULLY PUSHED TO REMOTE REPOSITORY