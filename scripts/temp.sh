#!/usr/bin/bash

if [ $1 = "create" ]
    then
        mkdir ~/temp
        ln -s ~/temp ~/Desktop/temp
    elif [ $1 = "remove" ]
    then
        rm -rf ~/temp
    elif [ $1 = "reset" ]
        rm -rf ~/temp
        mkdir ~/temp
        ln -s ~/temp ~/Desktop/temp
    else 
        echo "Opções:  "
        echo "  --c Cria a pasta temp"
        echo "  --r Apaga permanentemente a pasta temp"
fi