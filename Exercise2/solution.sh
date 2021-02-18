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

mkdir C
git mv A C/D
git mv B C/C
printf 'text C\n' > A
printf 'text C\n' > B
git add .
git commit -m 'tre'

#rinomino la directory C per estrarne il file C dal suo interno
git mv C _C 
#estraggo il contenuto della directory C
git mv _C/* .
git rm A B
#possiamo anche omettere questa istruzione perchè _C essendo vuota
#non sarà mai inserita nell'index
#rm _C 
git commit -m due

git reset --hard HEAD^

git checkout student

printf "text D\n" > T
git add .


# SOLUTION 2
#mkdir Exercise2
#cd Exercise2

#git init

#printf 'text A\n' > A
#printf 'text B\n' > B
#git add .
#git commit -m uno
#git branch student

#mkdir C
#git mv A C/D
#git mv B C/C
#printf 'text C\n' > A
#printf 'text C\n' > B
#git add .
#git commit -m 'tre'

#git tag t1
#git filter-branch --subdirectory-filter C/ --msg-filter 'printf "due\n"'
#git rebase 
#git add .
#git rebase --cotinue
#git reset HEAD^
#git tag -d t1 
#git update-ref -d refs/original/refs/heads/master
#git checkout student
#printf "text D\n" > D
#git add .









