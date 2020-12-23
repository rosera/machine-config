# Hugo Installation


## Installation 

If you have Go, use the compilation section to build the latest version for your system.
Alternatively install a version using the operating system package manager.

## Set up a Site
```
hugo new site [BLOG SITE]
```

## Add a theme

Move to the blog site directory
```
cd [BLOG SITE]
```

Initialise git

```
git init
```

Add the theme to the theme sub-directory e.g.
```
git submodule add https://github.com/budparr/gohugo-theme-ananke.git themes/ananke
```

Amend the config to show use the theme

```
echo 'theme = "ananke"' >> config.toml
```


## Add a Post

Add a post to the blog

```
hugo new posts/my-first-post.md
```


## Test the Blog site

Add the option `-p 8080` if you care which port Hugo runs on

```
hugo server -D -p 8080
```


## Compilation

Prerequisites

- [x] Git
- [x] Go


Ensure the host device is capable of complilation of Go programs


Move to the GOPATH directory (check ~/.profile)
```
cd ~/go/src
```

Fetch source from Git
```
git clone https://github.com/gohugoio/hugo.git
```

Build the application and move to /usr/bin
```
go build && mv ./hugo /usr/bin/hugo
```

__NOTE:__ 
To compile with Sass/SCSS support
```
CGO_ENABLED=1 go build --tags extended
```


Check the version

```
hugo version
```
