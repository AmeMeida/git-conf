#!/usr/bin/bash

cp .bash_alias ~/
source ~/.bash_alias

rm -rf ~/git
mkdir -p ~/git
cd ~/git

clear

echo "Bem vindo ao script de inicialização do Git!"

printf "Por favor, insira seu nome de usuário:  "
read USERNAME
printf "Por favor, insira seu email:  "
read USEREMAIL
printf "Insira o nome do seu repositório:  "
read REPONAME

BRANCH=main

USERURL=https://github.com/${USERNAME}
REPOURL=https://github.com/${USERNAME}/${REPONAME}

git config --global user.name $USERNAME
git config --global user.email $USEREMAIL
git clone $REPOURL

git branch --set-upstream ${BRANCH} origin/${BRANCH}

cd $REPONAME