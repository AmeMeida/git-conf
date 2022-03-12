#!/usr/bin/bash

cd ~

if [ $1 = "create" ]; then
        mkdir -p ~/temp
        rm -rf ~/Desktop/temp
        ln -s ~/temp ~/Desktop
	    echo "Pasta temporária criada!"
    elif [ $1 = "remove" ]; then
        rm -rf ~/temp
	    rm -rf ~/Desktop/temp
	    echo "Limpeza realizada!"
    elif [ $1 = "reset" ]; then
	    rm -rf ~/temp
	    rm -rf ~/Desktop/temp
        mkdir ~/temp
        ln -s ~/temp ~/Desktop/temp
	    echo "Todos os arquivos da pasta temporária foram deletados."
    else 
        echo "Opções:  "
        echo "  create -> Cria a pasta temp"
        echo "  remove -> Apaga permanentemente a pasta temp"
	    echo "  reset  -> Apaga todos os arquivos na pasta temp"
fi
