# Vim

This is a really quick guide to configuring Vim

## Build from Source

1. Install Packages

```
sudo apt install libncurses5-dev libgtk2.0-dev libatk1.0-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev python3-dev ruby-dev lua5.1 liblua5.1-0-dev libperl-dev git
```

2. Move to the home folder
```
cd ~
```

Ref: [VIM](https://www.vim.org/git.php)

3. Get VIM from github
```
git clone https://github.com/vim/vim.git
```

4. Enter the archive directory
```
cd ~/vim
```

5. Add configuration
```
./configure --with-features=huge \
                            --enable-multibyte \
                            --enable-rubyinterp=yes \
                            --enable-pythoninterp=yes \
                            --enable-python3interp=yes \
                            --with-python3-config-dir=/usr/lib/python3.6/config-3.6m-x86_64-linux-gnu \
                            --enable-perlinterp=yes \
                            --enable-gui=gtk2 \
                            --enable-cscope \
                            --prefix=/usr/local
```

6. Install the build output

```
sudo make install
```

7. Check the installation
```
vim --version
```

