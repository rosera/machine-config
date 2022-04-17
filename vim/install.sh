#!/bin/sh

# Clone the VIM repo
if [ ! -d "$HOME/vim" ]; then

  # Remove Vim
  sudo apt autoremove vim vim-runtime gvim

  # Remove Python2
  sudo apt autoremove python2*

  # Install packages
  sudo apt install -y git \
                 libatk1.0-dev \
                 libcairo2-dev \
                 libgtk2.0-dev \
                 liblua5.1-0-dev \
                 libncurses5-dev \
                 libperl-dev \
                 libx11-dev \
                 libxpm-dev \
                 libxt-dev \
                 lua5.1 \
                 python3-dev \
                 ruby-dev

  # Git clone VIM
  git clone https://github.com/vim/vim.git $HOME/vim

fi

# Configure Python3
if [ -d "$HOME/vim" ]; then
  # Change directory
  (cd $HOME/vim;./configure --with-features=huge \
    --enable-multibyte \
    --enable-rubyinterp=yes \
    --enable-python3interp=yes \
    --with-python3-command=$PYTHON_VER \
    --with-python3-config-dir=$(python3-config --configdir) \
    --enable-perlinterp=yes \
    --enable-gui=gtk2 \
    --enable-cscope \
    --prefix=/usr/local)

  # Make VIM + Install
  (cd $HOME/vim;make && sudo make install)
fi
