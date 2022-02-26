# /bin/bash

clear

echo "Bem vindo ao script de inicialização do Git!"


echo "Por favor, insira seu nome de usuário:  "
read USERNAME
echo "Por favor, insira seu email:  "
read USEREMAIL
echo "Insira o nome do seu repositório:  "
read REPONAME

USERURL="https://github.com/${USERNAME}"
REPOURL="${USERURL}/${REPONAME}"

git config --global user.name $USERNAME
git config --global user.email $USEREMAIL
git clone $REPO

cd $REPONAME