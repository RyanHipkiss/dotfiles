#!/bin/bash

clear

echo "===== Symlink all files ======="

ln -s ~/dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/vimrc/.vimrc ~/.vimrc
ln -s ~/dotfiles/zshrc/.zshrc ~/.zshrc
ln -s ~/dotfiles/.oh-my-zsh/custom/themes/ ~/.oh-my-zsh/custom/themes/

echo "===== All files symlinked ====="

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