#!/usr/bin/bash

clear

echo "Script para alterar o branch atual"

echo "O que você deseja fazer?"
echo "[1] - Novo branch"
echo "[2] - Branch pré-existente"
echo "[3] - Remover um branch"
read -p "Input:  " INPUT

if [ INPUT -lt 3 ]; then
    echo "Opção inválida."
    quit
fi

printf "Insira o nome do branch:  "
read BRANCH

if [ ${INPUT} -eq 1 ]; then
        git checkout -u -b ${BRANCH}
    elif [ ${INPUT} -eq 2 ]; then
        git checkout -u ${BRANCH}
    elif [ ${INPUT} -eq 3 ]; then
        git checkout -D ${BRANCH}
    else 
        echo "???"
fi