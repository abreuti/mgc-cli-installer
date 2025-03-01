#O que o script faz?
#Adiciona o diretório mgc_cli ao PATH.
#Verifica qual shell está sendo usado (bash ou zsh).
#Adiciona a configuração ao arquivo de perfil correspondente (~/.bashrc ou ~/.zshrc).

#!/bin/bash

# Diretório onde a CLI será instalada
INSTALL_DIR="$HOME/mgc_cli"

# Verifica se o diretório já está no PATH
if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
    echo "Adicionando $INSTALL_DIR ao PATH..."
    
    # Exporta a variável PATH
    echo "export PATH=\$HOME/mgc_cli:\$PATH" >> "$HOME/.mgc_path_tmp"

    # Detecta qual shell está em uso
    if [[ "$SHELL" =~ "zsh" ]]; then
        PROFILE_FILE="$HOME/.zshrc"
    else
        PROFILE_FILE="$HOME/.bashrc"
    fi

    # Adiciona ao shell profile
    cat "$HOME/.mgc_path_tmp" >> "$PROFILE_FILE"
    rm "$HOME/.mgc_path_tmp"

    echo "Configuração adicionada a $PROFILE_FILE. Para aplicar agora, rode:"
    echo "source $PROFILE_FILE"
else
    echo "O diretório $INSTALL_DIR já está no PATH."
fi
