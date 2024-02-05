#!/bin/bash
# Script para Pesquisa Reversa (DNS)

if [ "$1" == "" ] && [ "$2" == "" ] && [ "$3" == "" ];then
    echo "--------------------------------------------------------------------------"
    echo "Modo de uso: $0 192.168.2 205 254 <-----Exemplo de blocos de endereços IP"
    echo "--------------------------------------------------------------------------"
else
    echo "------------------------------------------------"
    echo "[*] Scaneando...."
    echo "------------------------------------------------"
    for ip in $(seq $2 $3);do
        host -t ptr $1.$i | grep -v $1 | grep -v "NXDOMAIN" | cut -d " " -f5
    done
fi