#!/bin/bash

#--------------- 1 ---------------
sh Svigruppo/Exercise2/solution.sh
cd Exercise2
#Ho working dir e index di 'due'
#nell'esecizio 2 l'ultimo comando 
#era git reset --soft HEAD^
git commit --amend -m due
#mi sposto sulla commit 3
git checkout HEAD@{3}
#mi risposto sulla commit 2
#preservando index e WD
git reset --soft master
git commit -m tre
#ripristino i file
git checkout -b tmp
git checkout master
git reset --soft tmp
git branch -D tmp

#--------------- 2 ---------------
sh Svigruppo/Exercise2/solution.sh
cd Exercise2
#salvo WD e index di commit due
git stash 
#elimino la commit 3
git rebase --onto master~1 master
git stash pop
git add .
git commit -m due
git stash drop

git checkout HEAD@{6}
git reset --soft master
git commit -m tre
git checkout master
git merge HEAD@{1}

#--------------- 3 ---------------
sh Svigruppo/Exercise2/solution.sh
cd Exercise2

git reset --hard 
rm tmp
git commit --amend due
git checkout HEAD@{3}
git rebase master
mv C\~HEAD A
mv D B
git add .
git rebase --continue
git checkout master
git checkout -b tmp
git merge tmp
git branch -D tmp


#--------------- 4 ---------------
sh Svigruppo/Exercise2/solution.sh
cd Exercise2
git reset --hard
git filter-branch --subdirectory-filter C/
git commit --amend -m due
git rebase student
git checkout refs/original/refs/heads/master
git reset --soft master
git add .
git commit -m tre
git checkout -b tmp
git checkout master
git merge tmp
git branch -d tmp
git update-ref -d refs/original/refs/heads/master

#--------------- 5 ---------------
sh Svigruppo/Exercise2/solution.sh
cd Exercise2
git reset --hard 
#sono nella commit 3
git filter-branch --subdirectory-filter C
git commit --amend -m due
git checkout refs/original/refs/heads/master
rm tmp
mkdir tmp
mv A B C tmp
git add .
git commit -m tre
git update-ref -d refs/original/refs/heads/master
git filter-branch --subdirectory-filter tmp
git update-ref -d refs/original/HEAD
git checkout -b tmp
git checkout master
git rebase student
git checkout tmp
git rebase master 
echo 'text C\n'>A
echo 'text C\n'>B
mv C\~HEAD D
git add .
git rebase --continue

git checkout master
git merge tmp
git branch -D tmp


#--------------- 6 ---------------
sh Svigruppo/Exercise2/solution.sh
cd Exercise2
git reset --hard 
git branch t3
#prende il contenuto della cartella C e ne fa una commit separata
git filter-branch --subdirectory-filter C
git commit --amend -m due
git checkout t3
git reset --soft master 
git commit -m tre
git update-ref -d refs/original/refs/heads/master
git checkout master
git merge t3
git branch -D t3


















