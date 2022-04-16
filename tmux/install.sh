#!/bin/sh

FILE_DIR="/usr/bin/tmux"
SCRIPT_DIR="$HOME/.tmux_script"

LOCAL_CONF="$HOME/.tmux.conf"
REMOTE_CONF="https://raw.githubusercontent.com/rosera/machine-config/master/tmux/.tmux.conf"

SCRIPT_PATH="https://raw.githubusercontent.com/rosera/machine-config/master/tmux/.tmux_script"

SCRIPT_DOCKER="docker.sh"
SCRIPT_HW="hardware.sh"
SCRIPT_NET="net.sh"
SCRIPT_UPTIME="uptime.sh"
SCRIPT_IP="whatsmyip.sh"

# Validate TMUX is installed
if [ ! -f "$FILE_DIR" ]; then
  echo "Script could not find $FILE_DIR"
  exit 1
fi  

# Validate Script Directory exists
if [ ! -d "$SCRIPT_DIR" ]; then
  mkdir -p "$SCRIPT_DIR"
fi

# Install TMUX configuration
if [ ! -f "$LOCAL_CONF" ]; then
  curl -L "$REMOTE_CONF" -o "$LOCAL_CONF"
fi

# Install TMUX SCRIPT - DOCKER
if [ ! -f "$SCRIPT_DIR/$SCRIPT_DOCKER" ]; then
  curl -L "$SCRIPT_PATH/$SCRIPT_DOCKER" -o "$SCRIPT_DIR/$SCRIPT_DOCKER"
fi

# Install TMUX SCRIPT - HW 
if [ ! -f "$SCRIPT_DIR/$SCRIPT_HW" ]; then
  curl -L "$SCRIPT_PATH/$SCRIPT_HW" -o "$SCRIPT_DIR/$SCRIPT_HW"
fi

# Install TMUX SCRIPT - NET 
if [ ! -f "$SCRIPT_DIR/$SCRIPT_NET" ]; then
  curl -L "$SCRIPT_PATH/$SCRIPT_NET" -o "$SCRIPT_DIR/$SCRIPT_NET"
fi

# Install TMUX SCRIPT - UPTIME 
if [ ! -f "$SCRIPT_DIR/$SCRIPT_UPTIME" ]; then
  curl -L "$SCRIPT_PATH/$SCRIPT_UPTIME" -o "$SCRIPT_DIR/$SCRIPT_UPTIME"
fi

# Install TMUX SCRIPT - IP 
if [ ! -f "$SCRIPT_DIR/$SCRIPT_IP" ]; then
  curl -L "$SCRIPT_PATH/$SCRIPT_IP" -o "$SCRIPT_DIR/$SCRIPT_IP"
fi
