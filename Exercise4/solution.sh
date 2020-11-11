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
mv R/ Z/
#aggiungere una seconda rica a T
printf 'aggiunta\n' >> T
#creare un nuovo elemento U
printf 'linea\n' > U
git add .
git commit -m 'feature ZUT'
git branch ZUT

rm T U
rm -rf Z
git add .
git commit -m end

printf 'terzo\n' > tmp





