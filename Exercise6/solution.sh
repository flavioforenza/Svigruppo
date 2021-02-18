#!/bin/bash

#--------------- 1 ---------------
sh Svigruppo/Exercise2/solution.sh
cd Exercise2

git rm -f D
git clean -fd _C
#seconda commit
git checkout master
git filter-branch --subdirectory-filter C/ --msg-filter 'printf "due"'
git rebase student 
git rm A B
git update-ref -d refs/original/refs/heads/master
#terza commit
git mv C D _C 
git mv _C C
printf 'text C\n' > A 
printf 'text C\n' > B
git add A B
git commit -m tre
git checkout student

#--------------- 2 ---------------
sh Svigruppo/Exercise2/solution.sh
cd Exercise2

git rm -f D
git clean -fd _C

git checkout master
git tag t1
#creo una commit con il contenuto di C e la chiamo "due"
git filter-branch --subdirectory-filter C/ --msg-filter 'printf "due"'
git rebase student
#fare come se due file non fossero mai stati versionati -> A B
git filter-branch -f --index-filter 'git rm --cached --ignore-unmatch A B' HEAD^..HEAD
git checkout t1
git filter-branch -f --tree-filter 'mkdir ._tmp; mv * ._tmp; mv ._tmp core;' HEAD^..HEAD
git filter-branch -f --subdirectory-filter core/
git rebase master
git rm -f D
#remove file untracked
git clean -f C~HEAD
git add C
git rebase --continue
git tag -d t1 t2 
git tag tmp
git update-ref -d refs/original/HEAD  
git checkout master
git merge tmp
git tag -d tmp
git checkout student

#--------------- 3 ---------------
sh Svigruppo/Exercise2/solution.sh
cd Exercise2

git rm -f D
git clean -fd _C
#mi sposto su tre e creo la nuova commit due
git checkout master
git filter-branch --subdirectory-filter C/ --msg-filter 'printf "due"'
#mi riposiziono su tre 
git checkout refs/original/refs/heads/master
#rimuovo ciò che ho nell'index per poter fare lo stash
git rm -r --cached A B C
#stash contiene i file di tre
git stash --a
#mi posiziono su due
git checkout master
#'uno' come parent
git rebase student
#rimuovo i file A e B di 'uno' 
git filter-branch -f --index-filter 'git rm --cached --ignore-unmatch A B' HEAD^..HEAD
git update-ref -d refs/original/refs/heads/master
git rm -f C D
git stash pop
git add .
git commit -m tre
git checkout student

#--------------- 4 ---------------
sh Svigruppo/Exercise2/solution.sh
cd Exercise2

git rm -f D
git clean -fd _C
git checkout master

#creo la commit 'due' su un nuovo branch
git checkout -b tmp
git filter-branch -f --subdirectory-filter C/ --msg-filter 'printf "due"'

git checkout master
git filter-branch -f --tree-filter 'mkdir ._tmp; mv * ._tmp; mv ._tmp core;' student..master
git filter-branch -f --subdirectory-filter core/ --msg-filter 'printf "tre"'
git update-ref -d refs/original/refs/heads/master
git checkout tmp
git reset --soft student
git commit -m due 
git checkout master
git reset --soft tmp
git commit -m tre
git branch -D tmp
git checkout student

#--------------- 5 ---------------
sh Svigruppo/Exercise2/solution.sh
cd Exercise2

git rm -f D
git clean -fd _C
git checkout master

#creare una cartella core con dentro il contenuto di 'tre'
git filter-branch -f --tree-filter 'mkdir ._tmp; mv * ._tmp; mv ._tmp core;' student..master

#fare una commit di core/C
git checkout -b tmp
git filter-branch -f --subdirectory-filter core/C --msg-filter 'printf "due"' 

#fare una commit di 
git checkout master
git filter-branch -f --subdirectory-filter core --msg-filter 'printf "tre"' -- --all

git update-ref -d refs/original/refs/heads/master
git checkout tmp
git commit -m due
git checkout master
git reset --soft tmp
git commit -m tre
git branch -D tmp
git checkout student



















