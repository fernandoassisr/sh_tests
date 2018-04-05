#!/bin/bash
# Compacta todos os arquivos em um determinado diretório

# Cores
RED='\033[0;31m'
GREEN='\033[0;32m'

if [ "$(ls -d */ 2>/dev/null)" ];
then
    for i in */; 
        do zip -r "${i%/}.zip" "$i";
    done
    echo -e  "${GREEN}Arquivos Zipados com sucesso"
    echo "..."
else
    echo -e "${RED}Nao ha diretorios a serem zipados"
fi
