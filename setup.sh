#!/bin/bash

# Export USER_HOME variable to easily get access of the home directory
export USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)

# Add the execution flag
chmod +x install-scripts/misc-install.sh
chmod +x install-scripts/fish-install.sh
chmod +x install-scripts/peco-install.sh
chmod +x install-scripts/exa-install.sh
chmod +x install-scripts/git-install.sh
chmod +x install-scripts/bat-install.sh

# Start all the scripts
./install-scripts/misc-install.sh
./install-scripts/fish-install.sh
./install-scripts/peco-install.sh
./install-scripts/exa-install.sh
./install-scripts/git-install.sh
./install-scripts/bat-install.sh

# Start fish shell & launch neofetch
unset USER_HOME
clear
fish -C neofetch

