🚀 Instalador Automático da CLI da MGC para Debian/Ubuntu

Este script automatiza a instalação da CLI da Magalu Cloud (MGC) em sistemas baseados em Debian, como Ubuntu. Ele baixa a versão mais recente da ferramenta e configura automaticamente o ambiente para melhor usabilidade.

📥 Instalação
Clone este repositório ou baixe o script diretamente:

git clone https://github.com/seu-repositorio.git && cd seu-repositorio

wget https://raw.githubusercontent.com/seu-repositorio/main/install_mgc.sh -O install_mgc.sh
Dê permissão de execução:

chmod +x install_mgc.sh
Execute o script:

./install_mgc.sh
🔧 O que o script faz?
✅ Baixa automaticamente a última versão da CLI da MGC.
✅ Extrai e move os arquivos para o diretório ~/mgc_cli.
✅ Adiciona mgc_cli ao PATH para facilitar o uso.
✅ Garante que a configuração seja aplicada no seu shell (.bashrc ou .zshrc).

🎯 Uso
Após a instalação, feche e reabra o terminal ou rode:

source ~/.bashrc  # Para usuários Bash  
Agora, você pode usar a CLI digitando:

mgccli --help