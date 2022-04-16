# Go Installation


## Bash Installation
```bash
curl -L https://raw.githubusercontent.com/rosera/machine-config/main/scripts/go/install.sh | bash
```

## Post Installation
1. Edit .bashrc setting and add the installation directory to the path
```bash
vi ~/.bashrc
```

2. Insert the following configuration at the bottom of the .bashrc file
```bash
# set PATH so it includes go installation if it exists
if [ -d "/usr/local/go/bin" ] ; then
  # export GOPATH=$HOME/go
  PATH="/usr/local/go/bin:$PATH"
fi
```

3. Activate the updated settings
```bash
source ~/.bashrc
```

4. Check the installation matches the installation version
```bash
go version
```
