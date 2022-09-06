#!/usr/bin/env bash 

cd infrastructure

mkdir PACKAGE

cd PACKAGE

# Declara variavel que localiza a função lambda para reutilização no código.
LAMBDA_FUNCTION=../../etl/lambda_function.py

# Verifica se o arquivo lambda_function.py existe
if [ -f $LAMBDA_FUNCTION ]
then
	echo "============================================="
	echo "Copiando função Handler..."
	cp $LAMBDA_FUNCTION .
	echo "Compactando arquivo lambda_function_payload.zip"
	zip -r9 ../lambda_function_payload.zip . #Compacta o pacote para o deploy
	echo "Arquivo compactado com sucesso!"
	echo "============================================="
fi

cd ..