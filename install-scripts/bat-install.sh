#!/bin/bash

# Install bat (may be aliased as batcat)
apt install -y bat

# Depends of the system
# On Ubuntu/Debian system
echo "alias cat='batcat'" >> $USER_HOME/.config/fish/config.fish

# On other system
# echo "alias cat='bat'" >> $USER_HOME/.config/fish/config.fish

>&2 echo -e "\033[33mIf this is not a Ubuntu/Debian distro, please change the alias in ~/.config/fish/config.fish from 'batcat' to simply 'bat'033[0m"

