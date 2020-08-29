# Installation Guide

A quick guide to install vim based on this configuration:

## vim-plug installation

[vim-plug](https://github.com/junegunn/vim-plug)

* Run curl command to install vim-plug
* Create a undodir `mkdir -p ~/.vim/undodir`
* Open Vim and enter the command:
```
PlugInstall
```

## YouCompleteMe

* YouCompleteMe needs Vim with Python3 support 3.5.1+
* YouCompleteMe - also need to run the 

Move to the YouCompleteMe directory
```
cd ~/.vim/plugged/YouCompleteMe
```
Finish the install for YouCompleteMe
```
python3 install.py
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


## Completed

The vim config should look similar to image displayed below:

![vim interface](https://github.com/rosera/machine-config/blob/master/images/vim-interface.png "Vim config")


