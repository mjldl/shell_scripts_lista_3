#!/bin/bash

read -p "Digite um endereço IPv4 válido para transforma-lo em bits: " ipv4
echo -e "\n\t$ipv4\n"
for p in {1..4}
do
	posicao_oct=$(echo $ipv4 | cut -d '.' -f$p)
	binario=$(echo "obase=2 ; ibase=10 ; $posicao_oct" | bc)
	tamanho=${#binario}
	if [ $tamanho -eq 8 ]
	then
		echo -e "$pº Octeto em binário: $binario"
	elif [ $tamanho -lt 8 ]
	then
		zeros=$(seq -s '' $((8 - $tamanho)) | tr [:digit:] 0)
		echo -e "$pº Octeto em binário: $zeros$binario"
	fi
done
