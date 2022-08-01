#!/bin/bash

# Install nvm
sudo -u $SUDO_USER wget https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh
sudo -u $SUDO_USER bash install.sh

# Install the omf wrapper
sudo -u $SUDO_USER fish -c "omf install nvm"

# Remove the installer
sudo rm install.sh

