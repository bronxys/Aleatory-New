#!/bin/bash

# Cores
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Função para verificar se houve erro na execução do Node.js
check_error() {
    if [ $? -ne 0 ]; then
        echo -e "${RED}Reiniciando, aguarde 10+ segundos..${NC}"
        sleep 10
        start_server
    fi
}

# Função para iniciar o servidor Node.js
start_server() {
    node conect.js sim
    check_error
}

# Configurando o fuso horário para América/São_Paulo
export TZ=America/Sao_Paulo
echo "Horário de América/São_Paulo: $(date +'%d/%m/%Y %H:%M:%S')"

# Mensagem de inicialização
echo -e "${GREEN}Iniciando seu bot Aleatory New..${NC}"

# Iniciar o servidor Node.js
start_server

