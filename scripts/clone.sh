#!/usr/bin/bash

mkdir -p ~/git
cd ~/git

read -p "Insira o link do repositório que será clonado:  " REPOURL
git clone $REPOURL