#!/bin/bash
clear
while true
do
	echo "Digite uma senha com pelo menos 5 caracteres, uma letra maiuscula e um numero: " && read -s  senha
	echo -e "\nAnalisando senha..." ; sleep 1
	echo $senha | grep -P '(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])[a-zA-Z0-9]{5,}' &> /dev/null
	if [ "$?" -eq 0 ]
	then
		echo -e "\nSua senha cumpre o requisitos mínimos!"
		break
	else
		echo -e "\nSua senha nao cumpre os requisitos minimos!!!"
	fi
done
