#!/usr/bin/bash

read -p "Insira o código do seu token:  " TOKEN
~/git-conf/scripts/temp.sh create

cd ~/temp
rm -f token.txt
touch token.txt
echo ${TOKEN}>token.txt