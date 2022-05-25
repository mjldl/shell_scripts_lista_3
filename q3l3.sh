#!/bin/bash

read -p "Digite um endereço IPv4 válido para transforma-lo em bits: " ipv4
for i in {1..4}
do
	rem=$(echo $ipv4 | cut -d '.' -f$i)
	

