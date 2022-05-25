#!/bin/bash
opc=1
while [ $opc != x ]
do
	clear ; echo 'Nao se perca ante a imensidao do universo.'
	echo -e "\n\tMENU"
	echo 'a - Liste apenas os diretorios de uma pasta'
	echo 'b - Liste apenas os arquivos executaveis'
	echo 'c - Liste apenas os links simbolicos'
	echo -e 'x - Saia do script\n'
	read -p 'Digite uma opcao do menu: ' opc
	echo -e "\n"
	case $opc in
		"a")
			read -p "Digite o caminho de uma pasta para listar seus diretorios: " a
			echo -e "\nlistando diretorios dentro de $a ...\n"
			sleep 1
			ls -l $a | grep "^d"
			break
			;;
		"b")
			read -p "Digite o caminho de uma pasta para listar seus arquivos executaveis : " a
                	echo -e "\nlistando executaveis dentro de $a ...\n"
                	sleep 1
                	ls -l $a/*.sh
			break
			;;
		"c")
                	read -p "Digite o caminho de uma pasta para listar seus arquivos executaveis : " a
                	echo -e "\nlistando links simbolicos dentro de $a ...\n"
                	sleep 1
                	ls -l $a | grep "^l"
			break
			;;
                "x")
                	echo -e "\nsaindo do script..."
                	sleep 1
			break
			;;
		*)
			echo "Digite uma opção válida!"
			sleep 1
			;;
	esac
done

