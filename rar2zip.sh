#!/bin/bash
# Descompacta todos os arquivos rar de um diretorio para zip
# Depedencias: unrar e zip

# Verificar se o unrar está instalado

if hash unrar 2>/dev/null; then
	# Body
	atual=`pwd`
	for arquivo in *.rar; do
	   temp=/tmp/$arquivo
	   if [ ! -e $temp ]; then
    		mkdir $temp
   	   fi
	   
	   unrar x $arquivo $temp

	   cd $temp
	  
	   zip -r $atual/$arquivo.zip *

	   cd $atual

	   rm -fRd $temp

	done

else
	echo "Necessario ter o unrar instalado para executar script"
fi