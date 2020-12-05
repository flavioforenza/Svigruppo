#!/bin/bash

if [ -d Esercizio1 ]; then rm -rf Esercizio1; fi  

mkdir Esercizio1
cd Esercizio1

git init

printf "text A\n" > A
printf "text B\n" > B

git add . 
git commit -m 'uno'
git branch student
git mv B C
git mv A D
git add .
git commit -m 'due'
  
mkdir _C #temp directory
git mv C D _C
git mv _C C #rename in C

printf "text C\n" > A
printf "text C\n" > B
git add .
git commit -m 'tre'
git checkout student

