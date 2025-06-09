#!/bin/bash

echo "[*] Aggiornamento pacchetti..."
sudo apt update && sudo apt upgrade -y

echo "[*] Installazione strumenti base..."
sudo apt install -y git curl wget unzip zsh build-essential

echo "[*] Configurazione Git..."
git config --global user.name "Riccardo Righini"
git config --global user.email "la-tua-email@esempio.com"

echo "[*] Installazione Oh My Zsh (solo se non già presente)..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
 sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/instal⏎
else
  echo "Oh My Zsh è già installato."
fi

echo "[*] Setup completato."
chmod +x setup_env.sh
./setup_env.sh
## Script automatico
```bash
~/cyberlab/00_toolchain/install-scripts/setup_env.sh

