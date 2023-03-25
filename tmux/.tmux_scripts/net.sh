#!/bin/bash
PLATFORM=$(uname -o)
if [ PLATFORM == "Linux" ]; then
  ip -o addr show scope global | tr -s ' ' | tr '/' ' ' | cut -f 2,4 -d ' ' | grep eth0
else
  ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}'
fi
