#!/bin/bash

if [ -d Exercise5 ]; then rm -rf Exercise5; fi

mkdir Exercise5
cd Exercise5

git init
printf 'pluto\n'>X
printf 'pippo\n'> Z/Y
cp Z/Y .
git add .
git commit -m primo

rm X
mv Y X
printf 'pippo e minnie\n'>D
git add .
git commit -m successivo

git tag delivered

mkdir tmp
mv Z tmp
mv tmp Z
mv D Z/
mv X Z/
git add .
git commit -m 'ultimo?'

printf 'sbagliato\n' > tmp

git checkout -b student
#Working Dir and Index don't change
git reset --soft delivered

git rm --cached Z/X
