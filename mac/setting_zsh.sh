#!/bin/sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s "$(which zsh)"
ZSH_PLUGIN_PATH=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins
sudo git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_PLUGIN_PATH/zsh-autosuggestions"
sudo git clone https://github.com/agkozak/zsh-z "$ZSH_PLUGIN_PATH/zsh-z"
sudo git clone https://github.com/zsh-users/zsh-completions "$ZSH_PLUGIN_PATH/zsh-completions"
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_PLUGIN_PATH/zsh-syntax-highlighting"

sed -i 's/^plugins=(git)/plugins=(git zsh-autosuggestions zsh-completions zsh-z zsh-syntax-highlighting)/g' ~/.zshrc
