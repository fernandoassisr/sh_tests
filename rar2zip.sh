#!/bin/bash
# Descompacta todos os arquivos rar de um diretorio para zip
# Depedencias: unrar e zip

# Verificar se o unrar está instalado

if hash unrar 2>/dev/null; then
	# Body
	atual=`pwd`
else
	echo "Necessario ter o unrar instalado para executar script"
fi