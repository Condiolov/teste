#!/bin/bash

# Entrada do usuário
num1=100

echo "Digite a operação (+, -, *, /):"
read operacao

echo "Digite o segundo número:"
read num2

# Realiza a operação diretamente
if [ "$operacao" == "+" ]; then
    echo "$((num1 + num2))"
elif [ "$operacao" == "-" ]; then
    echo "$((num1 - num2))"
elif [ "$operacao" == "*" ]; then
    echo "$((num1 * num2))"
elif [ "$operacao" == "/" ]; then
    # Verifica se o divisor é zero
    if [ "$num2" -eq 0 ]; then
        echo "Erro: Divisão por zero não é permitida!"
    else
        echo "$((num1 / num2))"
    fi
else
    echo "Operação inválida!"
fi
