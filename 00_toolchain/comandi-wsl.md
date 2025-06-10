# 🖥️ Comandi WSL – Riccardo Righini

Tutti i comandi realmente eseguiti nel modulo 0.1 – Toolchain.

## ⚙️ Setup iniziale WSL (PowerShell)
- wsl --list --online
- wsl --list --verbose
- wsl --install -d Ubuntu
- wsl --set-default-version 2
- dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
- dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
- dism.exe /online /enable-feature /featurename:HypervisorPlatform /all /norestart

## 🐧 Comandi su Ubuntu WSL
- sudo apt update && sudo apt upgrade -y
- sudo apt install -y git curl wget unzip zsh build-essential
- git config --global user.name "Riccardo Righini"
- git config --global user.email "riccardo@example.com"
- git config --list
- ssh-keygen -t ed25519 -C "riccardo@example.com"
- cat ~/.ssh/id_ed25519.pub
- ssh -T git@github.com
- sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
- chsh -s $(which zsh)

## 📁 Struttura progetto

- mkdir -p ~/cyberlab/00_toolchain/install-scripts
- cd ~/cyberlab
- touch README.md
- cd 00_toolchain
- touch lab-setup.md
- nano lab-setup.md

## 📝 Script di setup ambiente

-cd ~/cyberlab/00_toolchain/install-scripts
-nano setup_env.sh
-chmod +x setup_env.sh
-./setup_env.sh

## 🌀 GitHub repo

- cd ~/cyberlab
- git init
- git add .
- git commit -m "Initial commit"
- git remote add origin git@github.com:Riccardoengin01/cyberlab.git
- git branch -M main
- git push -u origin main

## 🛠️ Fix comuni

- ls -la
- rm nomefile
- mv comandi-wsl.md 00_toolchain/
- git status
- git add nomefile
- git commit -m "Messaggio"
- git push

## 🧪 Test rete (Modulo 0.2 preview)

- ping google.com -c 4
- nslookup google.com
- sudo apt install traceroute
- traceroute google.com

