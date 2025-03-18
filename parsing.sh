#!/bin/bash

if ["$1" == $""]
then 

    echo "O modo de uso nao esta correto"
    echo "Segue abaixo o exemplo de como deve ser utilizado"
    echo "$0 rede"
    echo "$0 192.168.0.0/24"

else

for ip in {1...254}
do
hping3 -s -p 80 -c1 $1.ip 2> /dev/null | grep "flags=SA";
done
fi