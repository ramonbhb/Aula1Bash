#!/bin/bash

echo "Hello World"
# echo "O cruzeiro é muito bom"
# echo "O atlético é ruim"

time="Cruzeiro"
echo $time
soma=$((50+50))
echo "A soma é $soma"

#echo "Digite o seu nome"
#read nome
#echo "Bem vindo $nome"

#cd contagem
n=`ls -la contagem/ | wc -l`
#echo $n
resultado=$(($n-3))
#cd ..
#echo $resultado
if [ $resultado -lt 10 ];
then
echo "Essa pasta está com problema"
else
echo "Essa pasta está ok"
fi

rm -rf novosarquivos/
mkdir novosarquivos
cd novosarquivos/
for i in $(seq 1 50); do 
lorem -p $i > arquivo_$i
done

total=0
for arquivo in *; do
tamArquivo=`wc -l $arquivo | awk '{print $1}'`
#echo $tamArquivo
total=$(($total+$tamArquivo))
#echo $total
done
echo "O total de linhas dos arquivos desta pasta é $total"

