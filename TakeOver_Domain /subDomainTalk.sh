#!/bin/bash

if [ -z "$1" ]

then 

    echo "Modo de uso incorreto!"
    echo "Exemplo de uso:"
    echo "  $0 <Inicio IP>"
    echo "  $0 <dominio.com.br>"
    exit
else 

host=$1
    for palavras in $(cat palavras.txt);do
    host -t cname $palavras.$host | grep "alias for" | cut -d " " -f6 | sed 's/.$//' >> enderecosEncontrados.txt

    done

    for navegador in $(cat enderecosEncontrados.txt);do
    firefox "$navegador"
    

    done
    fi