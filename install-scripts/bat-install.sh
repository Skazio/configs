#!/bin/bash

# Install bat (may be aliased as batcat)
apt install -y bat

# depends of the system
echo "alias cat='batcat'" >> $USER_HOME/.config/config.fish
echo "alias cat='bat'" >> $USER_HOME/.config/config.fish

