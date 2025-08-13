#!/usr/bin/env bash
set -e

echo "🔄 Updating system..."
sudo apt update && sudo apt upgrade -y

echo "📦 Installing essentials..."
sudo apt install -y \
    build-essential \
    curl \
    wget \
    git \
    unzip \
    zip \
    software-properties-common

echo "⚙️ Configuring Git..."
git config --global user.name "Michael West"
git config --global user.email "michaelwesttdev@gmail.com"
git config --global core.editor "code --wait"
git config --global core.excludesfile ~/.gitignore_global
echo "node_modules/" >> ~/.gitignore_global
echo ".env" >> ~/.gitignore_global

echo "📦 Installing Node.js LTS..."
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs
sudo npm install -g pnpm yarn

echo "🐍 Installing Python..."
sudo apt install -y python3 python3-pip python3-venv

echo "☕ Installing Java..."
sudo apt install -y openjdk-21-jdk

echo "🗄 Installing database clients..."
sudo apt install -y sqlite3 postgresql-client mysql-client redis-tools

echo "🐳 Installing Docker..."
sudo apt install -y docker.io docker-compose
sudo usermod -aG docker $USER

echo "💄 Installing Zsh + Oh My Zsh..."
sudo apt install -y zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "🎨 Installing Powerlevel10k theme..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's|ZSH_THEME=".*"|ZSH_THEME="powerlevel10k/powerlevel10k"|' ~/.zshrc

echo "🔧 Installing productivity CLI tools..."
sudo apt install -y bat fd-find ripgrep htop neofetch

echo "📂 Creating dev folder..."
mkdir -p ~/dev

echo "✅ Setup complete! Please restart your terminal for changes to take effect."
echo "⚠️ Remember to open VSCode on Windows and install the 'Remote - WSL' extension."
