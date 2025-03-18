#!/bin/bash

if [ "$1" == $"" ] 
then 

    echo "O modo de uso nao esta correto"
    echo "Segue abaixo o exemplo de como deve ser utilizado"
    echo "$0 rede"
    echo "$0 192.168.0.0/24"

else
for host in {1..254};
do 
ping -c 1 $1.$host | grep "64" | cut -d ":" -f 1 | cut -d " " -f 4 | grep -v "ping"; 
done
fi