#!/bin/bash

#--------------- 1 ---------------
sh Svigruppo/Exercise2/solution.sh
cd Exercise2
#Ho woking dir e index di 'due'
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


#ripristino i file della WD e index della commit 3
git reset --hard HEAD
rm tmp














