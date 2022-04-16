# Set up TMUX

A quick guide to setting up Tmux on a Linux system.
The guide follows the blog post on [richrose.dev](https://richrose.dev/posts/linux/tmux/tmux-setup/)

Once completed, the status line will look like the image below:
![tmux statusline](https://github.com/rosera/machine-config/blob/master/images/tmux-statusbar.png "Tmux statusbar")

## Bash Installation 
```bash
curl -L https://raw.githubusercontent.com/rosera/machine-config/rosera-patch-1/tmux/install.sh | bash
```

## General Installation
Note:
To source the config

```
tmux source-file ~/.tmux.conf
```

To source the config using TMUX
```
:source-file ~/.tmux.conf
```
