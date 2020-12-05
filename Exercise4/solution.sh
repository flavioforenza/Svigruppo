#!/bin/bash

if [ -d Exercise4 ]; then rm -rf Exercise4; fi  


mkdir Exercise4
cd Exercise4

git init

printf 'primo\n' > T
mkdir R
printf 'linea\n' > R/S
git add .
git commit -m 'feature RT'

#bisogna rinominare R in Z
git mv R Z
#aggiungere una seconda riga a T
printf 'aggiunta\n' >> T
#creare un nuovo elemento U
printf 'linea\n' > U
git add .
git commit -m 'feature ZUT'
git branch ZUT

git rm -r Z U T 
git commit -m end

#stacchiamo HEAD da master e facciamo puntare alla commit di tale ramo 
#in questo modo HEAD sarà in detached mode

git checkout --detach master

printf 'terzo\n' > tmp
git add .





