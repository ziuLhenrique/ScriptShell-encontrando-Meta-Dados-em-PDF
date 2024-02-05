#!/bin/bash
# Brute Force simples de DNSs

if [ "$1" == "" ] || [ "$2" == "" ];then
    echo "Brute Force"
    echo "Modo de uso: $0 NomeDodominioAlvo WordList"
else
    for word in $(cat $1);do
        host $word.$2 | grep -v "NXDOMAIN"
    done
fi
