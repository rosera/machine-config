#!/bin/sh

# Install System fonts
if [ ! -f "/etc/fonts/conf.d/10-powerline-symbols.conf" ]; then
  # Download the file
  wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
  sudo mv PowerlineSymbols.otf /usr/share/fonts/
  sudo fc-cache -vf
  sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/

  # Update the machine
  sudo apt -y update && sudo apt -y upgrade

  # Add powerline fonts
  sudo apt-get install fonts-powerline
fi

# Install OhMyBash 
if [ ! -d "$HOME/.oh-my-bash" ]; then
  curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh | bash
fi

# Install theme - Agnoster
if [ ! -d "$HOME/.oh-my-bash/custom/themes/agnoster" ]; then
  git clone https://github.com/agnoster/agnoster-zsh-theme.git ~/.oh-my-bash/custom/themes/agnoster
fi
