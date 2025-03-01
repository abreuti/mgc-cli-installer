# 🚀 Instalador Automático da CLI da MGC para Debian/Ubuntu 

Este script automatiza a instalação da CLI da Magalu Cloud (MGC) em sistemas baseados em Debian, como Ubuntu. Ele baixa a versão mais recente da ferramenta e configura automaticamente o ambiente para melhor usabilidade.

## 📥 Instalação MGC CLI

### 🔧 O que o script faz? <br>
✅ Baixa automaticamente a última versão da CLI da MGC.<br>
✅ Extrai e move os arquivos para o diretório ~/mgc_cli.<br>

Clone este repositório ou baixe o script diretamente:

```bash
git clone https://github.com/abreuti/mgc-cli-installer.git && cd #seu-repositorio
```
ou
```bash
wget https://raw.githubusercontent.com/seu-repositorio/main/install_mgc.sh -O mgccli_upgrade.sh
```

Dê permissão de execução:

```bash
chmod +x install_mgc.sh
```

Execute o script:
```bash
./mgccli_upgrade.sh
```
## 📥 Configuração inicial MGC CLI

✅ Adiciona mgc_cli ao PATH para facilitar o uso.<br>
✅ Garante que a configuração seja aplicada no seu shell (.bashrc ou .zshrc).<br>

Execute o script:
```bash
./mgccli_setup.sh
```

## 🎯 Uso
Após a instalação + setup, feche e reabra o terminal ou rode:

```bash
source ~/.bashrc  # Para usuários Bash  
```
Agora, você pode usar a CLI digitando:

```bash
mgccli --help
```