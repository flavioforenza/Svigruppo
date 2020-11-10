#!/bin/bash

if [ -d Exercise3 ]; then rm -rf Exercise3; fi  

mkdir Exercise3
cd Exercise3

git init
printf 'text A\n' > A
printf 'text B\n' > B
git add .
git commit -m root

git branch uno

mkdir D
mv A D/
mv B D/
printf 'text E\n' > D/E
git add .
git commit -m bis

git checckout uno
printf 'text C\n' > C
git add .
git commit -m first

git checckout master
git merge uno -m ooohhh




