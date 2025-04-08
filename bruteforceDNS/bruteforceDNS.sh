#!/bin/bash

if [ "$1" == $"" ]
then 

    echo "Modo de uso incorreto!"
    echo "Exemplo de uso:"
    echo "  $0 <dominio> <extensao>"
    echo "  $0 example.com"
    exit

else
    find "/root/Desktop/shellScript/bruteforceDNS" -mindepth 1 ! -name "bruteforceDNS.sh" ! -name "palavras.txt" ! -name "endURL.txt" -exec rm -r {} +

    echo " _______                      __                      ______                                           _______  __    __  ______  
/       \                    /  |                    /      \                                         /       \/  \  /  |/      \ 
$$$$$$$  | ______  __    __ _$$ |_    ______        /$$$$$$  ______   ______   _______  ______        $$$$$$$  $$  \ $$ /$$$$$$  |
$$ |__$$ |/      \/  |  /  / $$   |  /      \       $$ |_ $$/      \ /      \ /       |/      \       $$ |  $$ $$$  \$$ $$ \__$$/ 
$$    $$</$$$$$$  $$ |  $$ $$$$$$/  /$$$$$$  |      $$   | /$$$$$$  /$$$$$$  /$$$$$$$//$$$$$$  |      $$ |  $$ $$$$  $$ $$      \ 
$$$$$$$  $$ |  $$/$$ |  $$ | $$ | __$$    $$ |      $$$$/  $$ |  $$ $$ |  $$/$$ |     $$    $$ |      $$ |  $$ $$ $$ $$ |$$$$$$  |
$$ |__$$ $$ |     $$ \__$$ | $$ |/  $$$$$$$$/       $$ |   $$ \__$$ $$ |     $$ \_____$$$$$$$$/       $$ |__$$ $$ |$$$$ /  \__$$ |
$$    $$/$$ |     $$    $$/  $$  $$/$$       |      $$ |   $$    $$/$$ |     $$       $$       |      $$    $$/$$ | $$$ $$    $$/ 
$$$$$$$/ $$/       $$$$$$/    $$$$/  $$$$$$$/       $$/     $$$$$$/ $$/       $$$$$$$/ $$$$$$$/       $$$$$$$/ $$/   $$/ $$$$$$/  
                                                                                                                                  
                                                                                                                                  
                                                                                                                                  "

host=$1


for palavra in $(cat palavras.txt);do host $palavra.$host | grep -v "NXDOMAIN" >> resultado.txt;
done 

for endUrl in $(cat endURL.txt);do host "$host$endUrl"  | grep -v "NXDOMAIN" >> resultado.txt;


done
fi