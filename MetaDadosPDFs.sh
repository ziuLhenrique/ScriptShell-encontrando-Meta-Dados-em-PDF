#!/usr/bin/bash
# Encontrando meta dados de PDF(s) usando o google hacking
# ./findmetadados.sh


if [ "$1" == "" ];then
    echo "<<<<<<<<<<<<<<<HORUS>>>>>>>>>>>>>>>"
    echo "Modo de uso: $0 localhost.com pdf"
else
    lynx --dump "https://google.com/search?q=site:$1 ext:$2" | grep ".pdf" | cut -d "=" -f2 | egrep -v "site|google" | sed 's/...$//' > URLsPDFs

    for url in $(cat URLsPDFs);do 
        wget -q $url
        if [ $? -eq 0 ]; then
            echo "Dowload concluido com sucesso!"
        else   
            echo "Erro ao fazer dowload:("
        fi
    done
fi
exiftool *.pdf
echo "Meta dados de PDF(s) concluido com SUCESSO!"