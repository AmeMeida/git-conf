#!/usr/bin/bash

git status

git add .

read -p "Escreva a mensagem da commit:  " COMMITMESSAGE
git commit -m "${COMMITMESSAGE}"
git push -u origin main 
