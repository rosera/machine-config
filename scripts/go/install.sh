#!/bin/sh

GOLANG_VERSION="1.15"

if [ ! -d "/usr/local/go/bin" ]; then 
  # Download the file
  curl -Lo /tmp/go${GOLANG_VERSION}.linux-amd64.tar.gz https://golang.org/dl/go${GOLANG_VERSION}.linux-amd64.tar.gz
fi

if [ -f "/tmp/go${GOLANG_VERSION}.linux-amd64.tar.gz" ]; then
  sudo tar -C /usr/local -xzf /tmp/go${GOLANG_VERSION}.linux-amd64.tar.gz
fi
