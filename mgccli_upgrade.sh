#!/bin/bash

# Define o repositório do GitHub
tput setaf 2; echo 'Acessando diretórios do GitHub e identificando última versão do binário'; tput sgr0
REPO="MagaluCloud/mgccli"

# Obtém a última versão disponível (tag mais recente)
LATEST_VERSION=$(curl -s "https://api.github.com/repos/$REPO/releases/latest" | grep -oP '"tag_name": "\K(.*?)(?=")')
LATEST_VERSION=${LATEST_VERSION:1} #realizando uma substring para tirar o primeiro digito v
echo ''

# Verifica se conseguiu pegar a versão
if [ -z "$LATEST_VERSION" ]; then
    echo "❌ Erro ao obter a última versão do mgccli."
    exit 1
fi

echo "🔍 Última versão encontrada: $LATEST_VERSION"
echo ''

# Define a URL do binário (ajuste conforme necessário)
DOWNLOAD_URL="https://github.com/$REPO/releases/download/v$LATEST_VERSION/mgccli_${LATEST_VERSION}_linux_amd64.tar.gz"
sleep 2
echo 'Organizando arquivos ...'
echo ''

# Define o nome do arquivo de saída
OUTPUT_FILE="mgccli."

# Faz o download do arquivo
cd ~
echo "⬇️ Baixando o mgccli..."
tput setaf 3; curl -L -o "$OUTPUT_FILE" "$DOWNLOAD_URL"; tput sgr0
echo ''
sleep 2

# Concede permissão de execução
tput setaf 2; echo 'Concedendo permissão ao arquivo de download'; tput sgr0
chmod +x "$OUTPUT_FILE"
echo ''

# Verifica se o download foi bem-sucedido
if [ $? -ne 0 ]; then
    echo "❌ Erro ao baixar o mgccli."
    exit 1
fi

# Criando diretório de instalação da CLI
tput setaf 2; echo 'Criando diretório ...'; tput sgr0
mkdir ~/mgc_cli -v
echo ''
sleep 1

# Extrair o arquivo da mgccli no diretório acima
tput setaf 2; echo "🚀 Extraindo e Instalando o mgccli em ~/mgc_cli ..."; tput sgr0
tar -xvf $OUTPUT_FILE -C ~/mgc_cli
echo ''
sleep 1
echo 'Preparando a CLI ........'
export PATH=$HOME/mgc_cli:$PATH
echo 'export PATH=$HOME/mgc_cli:$PATH' >> ~/.bashrc 
echo ''
source ~/.bashrc
mgc completion bash | sudo tee /etc/bash_completion.d/mgc > /dev/null
echo ''
source ~/.bashrc
sleep 1

# Verifica a instalação
if command -v mgc &> /dev/null; then
    tput setaf 2; echo "✅ mgccli instalado com sucesso!"; tput sgr0
    mgc --version
    sleep 2
    echo 'Para fazer a autenticação na CLI e ter sua credencial armazenada no arquivo de configuração, utilize o seguinte comando'
    sleep 1
    tput setaf 3; echo 'mgc auth login'; tput sgr0
    echo ''
    tput setaf 4;echo 'Este comando abrirá uma janela do seu navegador padrão diretamente no site do ID Magalu, onde você deverá fazer seu login.'; tput sgr0
    tput setaf 4;echo 'Ao terminar o procedimento e fechar o navegador, a CLI exibirá a confirmação e seu token de acesso'; tput sgr0
    tput setaf 4;echo 'Para mais informações, ou se deseja autenticar via API-KEY, acesse a documentação oficial para melhor entendimento >> https://docs.magalu.cloud/docs/devops-tools/cli-mgc/how-to/auth <<'; tput sgr0
    echo ''
    tput setaf 3;echo 'Para configurar o auto completion da CLI no Bash execute >>  sudo mgc completion bash > /etc/bash_completion.d/mgc'; tput sgr0
else
    tput setaf 1; echo "❌ Falha na instalação do mgccli."; tput sgr0
    tput setaf 1; echo "Script exclusivo para sistemas Ubuntu/Debian, verificar a versão do seu S.Ocd"; tput sgr0
    exit 1
fi
