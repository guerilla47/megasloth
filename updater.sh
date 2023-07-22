#!/bin/zsh

# runs an 'apt-updater' script in .zshrc
# meant to combine with a cronjob to be run daily for linux os

apt update
apt dist-upgrade -Vy
apt autoremove -y
apt autoclean
apt clean
apt purge -y $(dpkg -l | awk '/^rc/ { print $2 }')
