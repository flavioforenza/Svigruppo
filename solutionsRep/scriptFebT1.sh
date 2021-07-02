if [ -d repo ]; then
	rm -rf repo;
fi

mkdir repo
cd repo
git init

printf 'primo file'>primo
git add .
git commit -m start

mkdir featFiles
printf 'sviluppo iniziale'>featFiles/feat
git add .
git commit -m step1

printf '\naggiunte'>>featFiles/feat
printf 'funzioni agiuntive'>featFiles/lib
printf 'aggiungere file pluto vuoto'>todolist
git add .
git commit -m step2

printf 'funzioni aggiuntive'>featFiles/lib  
touch pluto
git rm todolist
git add .
git commit -m completato

git tag featConStoria
git reset --soft HEAD^^^
git checkout -b feature1
git commit -m 'nuova feature completata'

git checkout master
printf 'nuove idee'>nuovo
git add nuovo
printf 'non tracciato'>ignored
