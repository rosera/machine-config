# Vim

This is a really quick guide to configuring Vim

## Build from Source

[Reference:](https://github.com/ycm-core/YouCompleteMe/wiki/Building-Vim-from-source)


Grep for the Python3 support (i.e. +Python3)
__NOTE:__ Python3+ is required for the most useful plugings, so I always check for this e.g.

```bash
vim --version | grep +python3
```
The tutorial includes adding this to the build, but you can also add additional functionality if required.

1. Install Packages

Get rid of python 2.x

```bash
sudo apt autoremove python
```

Add build packages
```bash
sudo apt install -y libncurses5-dev libgtk2.0-dev libatk1.0-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev python3-dev ruby-dev lua5.1 liblua5.1-0-dev libperl-dev git
```

2. Move to the home folder
```bash
cd ~
```

Ref: [VIM](https://www.vim.org/git.php)

3. Get VIM from github
```bash
git clone https://github.com/vim/vim.git
```

4. Enter the archive directory
```bash
cd ~/vim
```

5. Confirm the location of the Python3 config e.g.

```bash
ls /usr/lib/python3.7/config-3.7m-x86_64-linux-gnu
```

6. Add the valid location to an environment variable
```bash
export python_config="/usr/lib/python3.7/config-3.7m-x86_64-linux-gnu"
```

7. Add configuration
```bash
./configure --with-features=huge \
  --enable-multibyte \
  --enable-rubyinterp=yes \
  --enable-python3interp=yes \
  --with-python3-command=python3.7 \
  --with-python3-config-dir=$python_config \
  --enable-perlinterp=yes \
  --enable-gui=gtk2 \
  --enable-cscope \
  --prefix=/usr/local
```

__NOTE:__ Make sure Python command points to a valid directory

8. Install the build output

```bash
sudo make install
```

9. Check the installation
```bash
vim --version
```

10. Grep for the Python3 support (i.e. +Python3)

```bash
vim --version | grep +python3
```
