#!/usr/bin/env bash

ENDCOLOR="\e[0m"
YELLOW="\e[33m"

if [ -d "$HOME/.tmux/plugins/tpm" ]; then
  echo "${YELLOW}~/.tmux/plugins/tpm folder already exists. Skipping...${ENDCOLOR}"
  exit 0
fi

echo "${YELLOW}Installing Tmux Plugin Manager...${ENDCOLOR}"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

