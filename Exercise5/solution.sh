#!/bin/bash

if [ -d Exercise5 ]; then rm -rf Exercise5; fi

mkdir Exercise5
cd Exercise5

git init

printf "pluto\n" > X
printf "pippo\n" > Y
mkdir Z
cp Y Z
git add .
git commit -m primo

printf "pippo e minnie\n" > X
git add X
git mv X D
git mv Y X

git commit -m successivo 

git tag delivered

mkdir _Z
git mv D X Z _Z
git mv _Z Z
git commit -m "ultimo?"

printf 'sbagliato\n' > tmp
git add tmp
git rm -f --cached tmp Z/X  
git checkout -b student
#Working Dir and Index don't change
git reset --soft delivered






