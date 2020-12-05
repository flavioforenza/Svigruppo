#!/bin/bash

if [ -d Exercise2 ]; then rm -rf Exercise2; fi

mkdir Exercise2
cd Exercise2

git init

printf 'text A\n' > A
printf 'text B\n' > B
git add .
git commit -m uno
git branch student

printf 'text C\n' > A
printf 'text C\n' > B
mkdir C
printf 'text B\n' > tmp1
printf 'text A\n' > D
mv tmp1 C/C
mv D C/
git add .
git commit -m tre

mv C/C A
mv C/D B
git rm -rf C/
mv A C
mv B D
git add .
git commit -m due

printf "text D\n" > tmp
git add .
git hash-object -w tmp

git reset --soft HEAD^







