#!/usr/bin/bash

clear

echo "Script para alterar o branch atual"

echo "O que você deseja fazer?"
echo "[1] - Novo branch"
echo "[2] - Branch pré-existente"
echo "[3] - Remover um branch"
printf "Input:  "
read INPUT

if [ INPUT -lt 3 ]; then
    echo "Opção inválida."
    quit
fi

printf "Insira o nome do branch:  "
read BRANCH

if [ $INPUT -eq 1 ]; then
    git branch $BRANCH 
elif [ $INPUT -eq 2 ]; then
    git checkout $BRANCH
elif [ $INPUT -eq 3 ]; then
    git checkout -D $BRANCH
fi

git branch --set-upstream ${BRANCH} origin/${BRANCH}