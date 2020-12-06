#!/bin/bash

#--------------- 1 ---------------
sh Svigruppo/Exercise2/solution.sh
cd Exercise2

git rm --cached D
git clean -f D
git checkout master
git filter-branch --subdirectory-filter C/
git commit --amend -m due
git rebase student 
git update-ref -d refs/original/refs/heads/master
git mv C D _C 
git mv _C C
printf 'text C\n' > A 
printf 'text C\n' > B
git add A B
git commit -m tre



