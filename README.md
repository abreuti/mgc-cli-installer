# 🚀 Instalador Automático da CLI da MGC para Debian/Ubuntu 

Este script automatiza a instalação e upgrade da CLI da Magalu Cloud (MGC) em sistemas baseados em Debian, como Ubuntu. Ele baixa a versão mais recente da ferramenta e configura automaticamente o ambiente para melhor usabilidade.

## 📥 Instalação MGC CLI

### 🔧 O que o script faz? <br>
✅ Baixa automaticamente a última versão da CLI da MGC.<br>
✅ Extrai e move os arquivos para o diretório ~/mgc_cli.<br>

Clone este repositório 

```bash
git clone https://github.com/abreuti/mgc-cli-installer.git && cd mgc-cli-installer
```
Ou baixe o script diretamente
```bash
wget https://github.com/abreuti/mgc-cli-installer/blob/main/mgccli_install.sh -O mgccli_install.sh
```

Dê permissão de execução:

```bash
chmod +x mgccli_install.sh
```

Execute o script:
```bash
./mgccli_install.sh
```
## 🎯 Uso
Após a instalação, feche e reabra o terminal ou rode:

```bash
source ~/.bashrc  # Para usuários Bash  
```
Agora, você pode usar a CLI digitando:

```bash
mgccli --help
```