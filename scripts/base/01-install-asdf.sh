#!/usr/bin/env bash

ENDCOLOR="\e[0m"
YELLOW="\e[33m"

command_exists() {
  command -v "$@" >/dev/null 2>&1
}

setup_asdf() {
  if ! test -e ~/.asdf; then
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.0
  else
    echo "asdf is already installed."
  fi

  export PATH="$PATH:$HOME/.asdf/bin"

  if ! command_exists asdf; then
    echo "asdf not found!"
    exit 127
  fi

  echo "${YELLOW}Updating asdf to the latest stable release...${ENDCOLOR}"

  asdf update

  for plugin in age chezmoi kubectl neovim nodejs peco poetry python; do
    echo "${YELLOW}Adding $plugin plugin...${ENDCOLOR}"
    asdf plugin add $plugin
  done
}

if command_exists asdf; then
  echo "asdf is installed. Skipping..."
else
  echo "${YELLOW}Installing asdf tool version manager...${ENDCOLOR}"
  setup_asdf
  echo "asdf installed!"
fi

