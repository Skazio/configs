#!/bin/bash

# Add peco to omf
sudo -u $SUDO_USER fish -c omf install peco

# Install peco system-wide
apt install -y peco

