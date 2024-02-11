#!/bin/bash

for word in $(cat wordlist.txt);do
    response=$(curl -s -H "User-Agent: browser" -o /dev/null -w "%{http_code}" $1/$word/)

    if [ $response == "200" ]; then
        echo "Diretório Encontrado: $1/$word"
    fi
done