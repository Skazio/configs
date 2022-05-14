#!/bin/bash

# Install bat (may be aliased as batcat)
apt install bat

# depends of the system
echo "alias cat='batcat'" >> ~/.config/config.fish
echo "alias cat='bat'" >> ~/.config/config.fish

