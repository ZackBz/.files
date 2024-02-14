#!/bin/bash
OS=$(uname -s)

if [[ "$OS" == "Darwin" ]]; then
  CONFIG_FILE=~/.config/alacritty/alacritty_mac.toml
elif [[ "$OS" == "Linux" ]]; then
  CONFIG_FILE=~/.config/alacritty/alacritty_linux.toml
else
  echo "Unsupported OS: $OS"
  exit 1
fi

cp "$CONFIG_FILE" ~/.config/alacritty/alacritty.toml
echo "Loaded '$CONFIG_FILE' for OS: $OS"
