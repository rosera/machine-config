#!/bin/bash
PLATFORM=$(uname -o)
if [ "$PLATFORM" == "Darwin" ]; then
  ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}'
else
  ip -o addr show scope global | tr -s ' ' | tr '/' ' ' | cut -f 2,4 -d ' ' | grep eth0
fi
