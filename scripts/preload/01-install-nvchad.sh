#!/usr/bin/env bash

ENDCOLOR="\e[0m"
YELLOW="\e[33m"

if [ -d "$HOME/.config/nvim" ]; then
  echo "${YELLOW}~/.config/nvim folder already exists. Skipping...${ENDCOLOR}"
  exit 0
fi

echo "${YELLOW}Installing NvChad...${ENDCOLOR}"
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

