#!/usr/bin/env bash

ENDCOLOR="\e[0m"
YELLOW="\e[33m"

command_exists() {
  command -v "$@" > /dev/null 2>&1
}

export PATH="$HOME/.local/bin:$PATH"

if ! command_exists mise; then
  echo "mise not found!"
  exit 127
fi

echo "${YELLOW}Installing tools with mise...${ENDCOLOR}"
mise install
echo "mise tools installation complete."

