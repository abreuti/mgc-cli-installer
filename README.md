# 🚀 Instalador Automático da CLI da MGC para Debian/Ubuntu 

Este script automatiza a instalação e upgrade da CLI da Magalu Cloud (MGC) em sistemas baseados em Debian, como Ubuntu. Ele baixa a versão mais recente da ferramenta e configura automaticamente o ambiente para melhor usabilidade.

## 📥 Instalação MGC CLI

### 🔧 O que o script faz? <br>
✅ Baixa automaticamente a última versão da CLI da MGC.<br>
✅ Extrai e move os arquivos para o diretório ~/mgc_cli.<br>

Clone este repositório ou baixe o script diretamente.

```bash
git clone https://github.com/abreuti/mgc-cli-installer.git && cd mgc-cli-installer
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

Para fazer a autenticação na CLI e ter sua credencial armazenada no arquivo de configuração, utilize o seguinte comando
```bash
mgc auth login
```

Este comando abrirá uma janela do seu navegador padrão diretamente no site do ID Magalu, onde você deverá fazer seu login.
Ao terminar o procedimento e fechar o navegador, a CLI exibirá a confirmação e seu token de acesso.
Para mais informações, ou se deseja autenticar via API-KEY, acesse a documentação oficial para melhor entendimento
https://docs.magalu.cloud/docs/devops-tools/cli-mgc/how-to/auth

## Aviso !
Este script não é um produto oficial da Magalu Cloud (MGC). Ele é apenas uma ferramenta de automação criada para facilitar a instalação da MGC CLI.