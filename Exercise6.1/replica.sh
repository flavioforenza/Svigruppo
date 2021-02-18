#!/bin/bash

if [ -d Replica ]; then rm -rf Replica; fi  

mkdir Replica
cd Replica

git init

printf 'uno' > U 
printf 'due' > Z
git add .
git commit -m primo 

mkdir A
git mv U A
printf 'tre\n' > B
git add .
git commit -m bello

git rm -rf *
git commit -m errore

#reset to "bello"
git reset --hard HEAD^
git checkout -b ok 
printf '\naggiunta'>>Z
git add .
git commit -m finale
git checkout master
printf	'studenti' >> B
git add .
printf ' promossi'>>B







