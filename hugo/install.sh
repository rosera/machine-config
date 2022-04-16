#!/bin/sh

version="0.97.1"

if [ ! -f "/usr/local/bin/hugo" ]; then
  # Download the file
  curl -L https://github.com/gohugoio/hugo/releases/download/v${version}/hugo_extended_${version}_Linux-64bit.deb -o /tmp/hugo_extended_${version}_Linux-64bit.deb
fi

if [ -f "/tmp/hugo_extended_${version}_Linux-64bit.deb" ]; then
  sudo dpkg -i /tmp/hugo_extended_${version}_Linux-64bit.deb
fi
