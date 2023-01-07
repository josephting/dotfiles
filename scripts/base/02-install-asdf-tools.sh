#!/usr/bin/env bash

ENDCOLOR="\e[0m"
YELLOW="\e[33m"

command_exists() {
  command -v "$@" >/dev/null 2>&1
}

export PATH="$PATH:$HOME/.asdf/bin"

if ! command_exists asdf; then
  echo "asdf not found!"
  exit 127
fi

for plugin in age kubectl neovim nodejs peco python poetry; do
  echo "${YELLOW}Installing $plugin...${ENDCOLOR}"
  asdf install $plugin
done

echo "asdf tools installation complete."

