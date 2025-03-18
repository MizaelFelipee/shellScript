#!/bin/bash

if [ "$1" == $"" ] 
then 

    echo "O modo de uso nao esta correto"
    echo "Segue abaixo o exemplo de como deve ser utilizado"
    echo "$0 rede"
    echo "$0 192.168.0.1"

else
for ip in {1..254}
do 
hping3 -S -p 1337 -c 1 $1.$ip 2> /dev/null | grep "flags=SA" | cut -d "=" -f 3 | cut -d " " -f 1 ;
done
fi