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
#f5 tree -> d4 tree = f5 tree contiene la directory d4 tree  
git mv C A #necessario per creare la cartella C in seguito
mkdir C
git mv A C/C
git mv D C
printf "text C\n" > A
printf "text C\n" > B
git add .
git commit -m 'tre'
git checkout student

