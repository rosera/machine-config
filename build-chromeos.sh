#!/bin/bash
# Download chromeos.zip
#curl -Lo chromeos.zip https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13729.56.0_guado_recovery_stable-channel_mp-v2.bin.zip
# R87
curl -Lo chromeos.zip https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_13505.73.0_guado_recovery_stable-channel_mp-v2.bin.zip
# Download Brunch release
#curl -Lo brunch.tar.gz https://github.com/sebanc/brunch/releases/download/r89-stable-20210403/brunch_r89_stable_20210403.tar.gz
curl -Lo brunch.tar.gz https://github.com/sebanc/brunch/releases/download/r88-stable-20210223/brunch_r88_stable_20210223.tar.gz
# Instructions
echo "1. sudo apt install -y cgpt pv tar"
echo "2. tar zxvf brunch.tar.gz"
echo "3. unzip chromeos.zip"
echo "4. lsblk"
echo "5. sudo bash chromeos-install.sh -src CHROME.img > -dst /dev/sdX"
