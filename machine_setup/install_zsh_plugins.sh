#!/bin/zsh

# Install Zsh plugins for syntax highlighting and auto-suggestions
echo "Installing Zsh plugins..."

# Create custom plugins directory if it doesn't exist
ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}
mkdir -p $ZSH_CUSTOM/plugins

# Install zsh-syntax-highlighting
echo "Installing zsh-syntax-highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# Install zsh-autosuggestions
echo "Installing zsh-autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Update .zshrc to load the plugins
echo "Updating .zshrc to load the plugins..."
sed -i '/^plugins=/ s/)$/ zsh-syntax-highlighting zsh-autosuggestions)/' ~/.zshrc

# Apply changes
echo "Applying changes..."
source ~/.zshrc

echo "Installation complete! Please restart your terminal."
