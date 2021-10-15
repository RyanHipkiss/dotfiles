#!/bin/bash

clear

echo "==== Intall VS Code Extensions ===="
code --install-extension bceskavich.theme-dracula-at-night
code --install-extension dbaeumer.vscode-eslint
code --install-extension eamodio.gitlens
code --install-extension esbenp.prettier-vscode
code --install-extension fwcd.kotlin
code --install-extension kevinmcgowan.TypeScriptImport
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension pmneo.tsimporter
code --install-extension Shan.code-settings-sync
code --install-extension TabNine.tabnine-vscode
echo "==== All extensions installed ===="

echo "==== Install package managers ===="
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh install.sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
source ~/.bashrc

brew install nvm
brew install rvm
brew install fastlane

rvm install 2.4.0
rvm use 2.4.0

nvm install 12.21
nvm install 10.13

echo "==== All package managers installed ===="

echo "===== Symlink all files ======="

ln -s ~/dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/vimrc/.vimrc ~/.vimrc
ln -s ~/dotfiles/zshrc/.zshrc ~/.zshrc
ln -s ~/dotfiles/.oh-my-zsh/custom/themes/ ~/.oh-my-zsh/custom/themes/

echo "===== All files symlinked ====="