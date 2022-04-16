# OhMyBash

## Bash Installation
```bash
curl -L https://raw.githubusercontent.com/rosera/machine-config/main/scripts/ohmybash/install.sh | bash
```

## Post Installation

1. Edit `$HOME/.bashrc` configuration file
2. Amend the theme to use Agnoster
```bash
echo $RANDOM_THEME
#OSH_THEME="font"
OSH_THEME="agnoster"
```
3. Save and exit the configuration file

__NOTE:__ If the RANDOM_THEME is set, it will load a random theme each time oh-my-bash is loaded.

4. Reload the environment

```bash
source $HOME/.bashrc
```
