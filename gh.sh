#!/bin/bash

if [ "$1" == $"" ] 
then 

    echo "Nao foi passado o argumento para pesquisa do alvo"
    echo "Encaminhe apos o nome do arquivo com o site a ser pesquisado para o pentest"
    echo "$0 facebook.com.br"
else

navegador="firefox"
alvo=$1

echo "Realizando somente pelo site"
$navegador "https://google.com/search?q=site:$alvo" >2 /dev/null

echo "Realizando somente pelo site e se encotramos a palavra senha"
$navegador "https://google.com/search?q=site:$alvo+intext:password" >2 /dev/null

echo "Realizando somente pelo site se encontramos algum arquivo"
$navegador "https://google.com/search?q=site:$alvo+filetype:php" >2 /dev/null

echo "Realizando somente pelo site se encontramos algum arquivo"
$navegador "https://google.com/search?q=site:$alvo+filetype:txt" >2 /dev/null

echo "Realizando somente pelo site se encontramos algum arquivo"
$navegador "https://google.com/search?q=site:$alvo+filetype:asp" >2 /dev/null

echo "Realizando somente pelo site se encontramos algum arquivo"
$navegador "https://google.com/search?q=site:$alvo+filetype:xls" >2 /dev/null

echo "Realizando somente pelo site se encontramos algum arquivo"
$navegador "https://google.com/search?q=site:$alvo+filetype:ovpn" >2 /dev/null

echo "Realizando somente pelo site se encontramos algum arquivo"
$navegador "https://google.com/search?q=site:$alvo+filetype:bkp" >2 /dev/null

echo "Realizando somente pelo site se encontramos algum arquivo"
$navegador "https://google.com/search?q=site:$alvo+filetype:old" >2 /dev/null

echo "Realizando somente pelo site com o titulo"
$navegador "https://google.com/search?q=site:$alvo+intitle:usuario" >2 /dev/null

echo "Realizando somente pelo site com o titulo"
$navegador "https://google.com/search?q=site:$alvo+intitle:acesso_restrito" >2 /dev/null

echo "Realizando somente pelo site com o titulo"
$navegador "https://google.com/search?q=site:$alvo+intitle:admin" >2 /dev/null

echo "Realizando somente pelo site com o titulo"
$navegador "https://google.com/search?q=site:$alvo+intitle:adm" >2 /dev/null

fi