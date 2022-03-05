#!/usr/bin/bash

git status

read -p "Tem certeza que deseja sair? Confira se todas as atualizações já estão no repositório. [y/n]:  " OPTION

if [ ${OPTION} == 'y' ]; then
    bash ~/git-conf/scripts/temp.sh remove

    echo "">~/.gitconfig
    echo "">~/.bashhistory
    rm -rf ~/git

    echo "Limpeza realizada. Tchau!"
fi