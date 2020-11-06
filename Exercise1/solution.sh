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
#1 tree -> 2 tree = 1 tree contiene la directory 2 tree  
git mv C A #necessario per creare la cartella C in seguito
mkdir C
git mv A C/C
git mv D C
printf "text C\n" > A
printf "text C\n" > B
git add .
git commit -m 'tre'
git checkout student

