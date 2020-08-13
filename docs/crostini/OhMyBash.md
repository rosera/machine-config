# Bash Configuration
 
Configure Zsh/Bash shell with user based themes to make the command line visually appealing.

## Install the fonts on your system

__Note:__ Fonts can be downloaded from here
https://github.com/powerline/fonts.git - follow example below to install them on host (install.sh)

```
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo fc-cache -vf
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
```


__Note:__ This configuration can be applied to local terminal setting and also the cloudtop SSH connection.
Configuration 

Update your machine
```
sudo apt -y update && sudo apt -y upgrade
```

Install the powerline fonts
```
sudo apt-get install fonts-powerline
```

## Oh My Bash

Install oh-my-bash
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
```

Add agnoster theme
```
git clone https://github.com/agnoster/agnoster-zsh-theme.git ~/.oh-my-bash/custom/themes/agnoster
```


Make the following amendments in your configuration file - Amend the theme


Set name of the `.bashrc` theme to load --- if set to "random", it will load a random theme each time oh-my-zsh is loaded, in which case, to know which specific one was loaded, run: 

```
#echo $RANDOM_THEME
#OSH_THEME="font"
OSH_THEME="agnoster"
Add any plugins that would be useful, for example


# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  debian
  docker
  git
  go
  ruby
  tmux
)
```



## Configure ChromeOS
1. In the browser, open a terminal tab and press
```
CTRL-ALT-T
```

2. From the terminal tab, alter the look/behaviour by pressing
```
CTRL-SHIFT-P
```

3. Find the appearance settings, then go to the font-family and enter your new font option (list of fonts is available here) e.g.

* "Liberation Mono", monospace


4. Now select the custom-css (URI) entry and change the default “https://example.com/some/file” contents to the following:
```
https://cdn.jsdelivr.net/gh/wernight/powerline-web-fonts@ba4426cb0c0b05eb6cb342c7719776a41e1f2114/PowerlineFonts.css
```

5. Exit the appearance setting screen
6. Exit the Crosh browser tab
7. Restart the Terminal window 

On Restart of the terminal will be using the updated font selection and theme!
