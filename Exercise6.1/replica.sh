if [ -d Replica ]; then rm -rf Replica; fi  

mkdir Replica
cd Replica

git init

printf 'uno' > U 
printf 'due' > Z
git add .
git commit -m primo 

mkdir A
mv U A
printf 'tre\n' > B
git add .
git commit -m bello
git branch ok

git rm -rf *
git commit -m errore

#reset to "bello"
git reset --hard HEAD^
git checkout ok 
printf 'due\naggiunta'>Z
git add .
git commit -m finale
printf	'tre\nstudenti' > B
git checkout master
git add .
printf 'tre\nstudenti promossi'>B







