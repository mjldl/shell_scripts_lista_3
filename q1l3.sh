#/bin/bash 

clear
read -p "Digite um arquivo para que seus números sejam trocados pela letra 'Z'
(Sugestão de arquivo para teste: /etc/passwd): " f
cat $f | tr '0123456789' 'Z' ; sleep 1 && echo -e "\nscript executado com sucesso!"

