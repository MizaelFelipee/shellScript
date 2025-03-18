#!/bin/bash

if [ "$1" == $"" ] 
then 

    echo "O modo de uso nao esta correto"
    echo "Informe a URL Que deseja fazer a varredura"
    echo "Exemplo"
    echo "$0 www.facebook.com"
else
wget $1
grep "href" index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | grep -v "<li" > lista
rm index.html
for url in $(cat lista); 
do host $url 
done
rm lista
fi 