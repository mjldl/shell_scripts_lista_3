#/bin/bash

clear
read -p "Digite um arquivo para que suas linhas vazias sejam removidas: " x
cat $x | tr -s "\n" "\n" ; sleep 1 && echo -e "\nscript executado com sucesso!"

