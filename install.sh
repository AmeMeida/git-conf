#!/usr/bin/bash

cp ~/git-conf/.bash_profile ~/
cp ~/git-conf/.bash_alias ~/

bash ~/git-conf/scripts/temp.sh create

rm -rf ~/git
mkdir -p ~/git
cd ~/git

echo "Bem vindo ao script de inicialização do Git!"

read -p "Por favor, insira seu nome de usuário:  " USERNAME
read -p "Por favor, insira seu email:  " USEREMAIL
read -p "Insira o nome do seu repositório:  " REPONAME

USERURL=https://github.com/${USERNAME}
REPOURL=https://github.com/${USERNAME}/${REPONAME}.git

git config --global user.name $USERNAME
git config --global user.email $USEREMAIL
git clone $REPOURL

cd $REPONAME
