#!/bin/bash

# Add the execution flag
chmod +x install-scripts/misc-install.sh
chmod +x install-scripts/fish-install.sh
chmod +x install-scripts/peco-install.sh
chmod +x install-scripts/exa-install.sh
chmod +x install-scripts/git-install.sh

# Start all the scripts
./install-scripts/misc-install.sh
./install-scripts/fish-install.sh
./install-scripts/peco-install.sh
./install-scripts/exa-install.sh
./install-scripts/git-install.sh

# Start fish shell & launch neofetch
clear
fish -C neofetch

