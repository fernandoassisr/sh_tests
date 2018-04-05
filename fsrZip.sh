#!/bin/bash
# Compacta todos os arquivos em um determinado diretório
if [ "$(ls -d */ 2>/dev/null)" ];
then
    for i in */; 
        do zip -r "${i%/}.zip" "$i";
    done
    echo "Arquivos Zipados com sucesso"
    echo "..."
else
    echo "Nao ha diretorios a serem zipados"
fi
