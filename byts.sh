#!/bin/bash

# Função para realizar a conversão
convert_bytes() {
  local bytes=$1

  if (( bytes < 1024 )); then
    echo "$bytes B"
  elif (( bytes < 1048576 )); then
    echo "$(echo "scale=2; $bytes/1024" | bc) KB"
  elif (( bytes < 1073741824 )); then
    echo "$(echo "scale=2; $bytes/1048576" | bc) MB"
  elif (( bytes < 1099511627776 )); then
    echo "$(echo "scale=2; $bytes/1073741824" | bc) GB"
  else
    echo "$(echo "scale=2; $bytes/1099511627776" | bc) TB"
  fi
}

# Verifica se foi passado um valor de byte
if [ -z "$1" ]; then
  echo "Por favor, forneça um valor em bytes."
  exit 1
fi

# Chama a função para converter o valor passado
convert_bytes "$1"
