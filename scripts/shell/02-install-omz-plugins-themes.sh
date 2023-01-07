#!/usr/bin/env bash

ENDCOLOR="\e[0m"
YELLOW="\e[33m"

if [ -d "$HOME/.oh-my-zsh" ]; then
  echo "${YELLOW}~/.oh-my-zsh folder already exists. Skipping..."
  exit 0
fi

echo "${YELLOW}Installing oh-my-zsh...${ENDCOLOR}"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc

echo "${YELLOW}Installing zsh-syntax-highlighting...${ENDCOLOR}"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "${YELLOW}Installing zsh-autosuggestions...${ENDCOLOR}"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "${YELLOW}Installing zsh-peco-history...${ENDCOLOR}"
git clone https://github.com/jimeh/zsh-peco-history.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-peco-history

echo "${YELLOW}Installing powerlevel10k...${ENDCOLOR}"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

