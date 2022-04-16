#!/bin/sh

if [ ! -f "$HOME/.vim/autoload/plug.vim" ]; then
  # vim-plug installation
  curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/main/plug.vim
fi

if [ ! -d "$HOME/.vim/undodir" ]; then
  # Create an undo directory
  mkdir -p $HOME/.vim/undodir
fi

if [ ! -f "$HOME/.vimrc" ]; then
  # Download vim configuration
  curl -fLo $HOME/.vimrc https://raw.githubusercontent.com/rosera/machine-config/main/vim/.vimrc
fi
