# Set up TMUX

Reference Rich Rose Blog Post: [Setting up Tmux](https://richrose.dev/posts/linux/tmux/tmux-setup/)

## TMUX Installation
1. Install tmux
```bash
sudo apt-get install -y tmux
```

2. Check tmux help
```bash
tmux --help
```

__NOTE:__ Should display similiar output to below:
```bash
usage: tmux [-2CluvV] [-c shell-command] [-f file] [-L socket-name]
            [-S socket-path] [command [flags]]
```

## TMUX configuration
1. Move to the root/home directory
```
cd ~
```

3. Clone the repo into the home directory
```
git clone https://github.com/rosera/machine-config.git
```

4. Copy the tmux configuration files to the home directory

```
cp -r ~/machine-config/tmux/.tmux* ~
```

## TMUX Execution


1. Start tmux
```
tmux
```

The status line will look like the image below:
![tmux statusline](https://github.com/rosera/machine-config/blob/master/images/tmux-statusbar.png "Tmux statusbar")

