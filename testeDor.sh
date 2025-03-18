#!/bin/bash

# Verifica se um argumento foi passado
if [ -z "$1" ]; then
    echo "Uso incorreto!"
    echo "Exemplo de uso:"
    echo "$0 192.168.0."
    exit 1
fi

# Verifica se o arquivo portas.txt existe
if [ ! -f portas.txt ]; then
    echo "Arquivo portas.txt não encontrado!"
    exit 1
fi

# Loop para percorrer os IPs de 1 a 255
for ip in {1..255}; do
    for porta in $(cat portas.txt); do
        hping3 -S -p $porta -c 1 "$1.$ip" 2>/dev/null | grep "flags=SA" && echo "Porta $porta aberta em $1$ip"
    done
done
