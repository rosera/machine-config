# Set up TMUX

1. Install tmux
```
sudo apt-get install -y tmux
```

2. Move to the root/home directory
```
cd ~
```

3. Clone the repo into the home directory
```
git clone https://github.com/rosera/machine-config.git
```

4. Copy the tmux configuration files to the home directory

```
cp ~/machine-config/tmux/.tmux*.* ~
```

5. Copy the tmux_script directory to the home directory

 ``
cp -r ~/machine-config/tmux/.tmux*.* ~
```

6. Start tmux
```
tmux
```
