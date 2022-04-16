# Installation Guide

A guide on setting up Vim on Linux.
The reference is based on the blog post on [richrose.dev](https://richrose.dev/posts/linux/vim/vim-setup/)

## Completed

The vim config should look similar to image displayed below:

![vim interface](https://github.com/rosera/machine-config/blob/main/images/vim-interface.png "Vim config")

__NOTE:__ The following assumes the required development languages are already installed on the host machine

## Bash Installation 
```bash
curl -L https://raw.githubusercontent.com/rosera/machine-config/main/vim/install.sh | bash
```

## VIM Configuration
```bash
curl -L https://raw.githubusercontent.com/rosera/machine-config/main/vim/vimconfig.sh | bash
```

## VIM Plugin

1. Load Vim
2. Run the PlugInstall command
```bash
:PlugInstall
```
3. Exit VIM

## YouCompleteMe Install
1. Change director to `.vim/
```bash
cd $HOME/.vim/plugged/YouCompleteMe
```

2. Install `CMAKE`
```bash
sudo apt install -y cmake
```

3. Run `YouCompleteMe` installer
```bash
python3 install.py --all
```

## Plugin

File uses the following plugins:

### General

* Plug 'vim-airline/vim-airline'
* Plug 'vim-airline/vim-airline-themes'
* Plug 'ap/vim-css-color'
* Plug 'airblade/vim-gitgutter'
* Plug 'morhetz/gruvbox'
* Plug 'jremmen/vim-ripgrep'
* Plug 'tpope/vim-fugitive'
* Plug 'vim-utils/vim-man'
* Plug 'preservim/nerdtree'
* Plug 'Valloric/YouCompleteMe'
* Plug 'mbbill/undotree'

### Development 

* Plug 'tpope/vim-markdown'
* Plug 'junegunn/goyo.vim'
* Plug 'leafgarland/typescript-vim'
* Plugin 'vim-ruby/vim-ruby'
* Plugin 'tpope/vim-rails'
* Plugin 'fatih/vim-go'
* Plugin 'pangloss/vim-javascript'
