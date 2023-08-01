#!/bin/bash
# crontab auto run this file
# crontab command:
# 59 22 * * 0  /path/to/your_script.sh //will be executed at 11:59 PM every Sunday. 

cd /home/ubuntu/git-commit-board
git pull

git add .

today=$(date +"%Y-%m-%d")

# commit message 
commit_message="board update test** $today"

git commit -m "$commit_message"

git push
