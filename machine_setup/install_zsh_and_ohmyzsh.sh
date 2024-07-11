#!bin/bash
echo "Installing Zsh..."
sudo apt update
sudo apt install -y zsh

ZSH=~/.oh-my-zsh

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


