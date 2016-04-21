#!/bin/bash

clear

echo "===== Symlink all files ======="

ln -s ~/dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/vimrc/.vimrc ~/.vimrc
ln -s ~/dotfiles/zshrc/.zshrc ~/.zshrc
ln -s ~/dotfiles/.oh-my-zsh/custom/themes/ ~/.oh-my-zsh/custom/themes/

echo "===== All files symlinked ====="

