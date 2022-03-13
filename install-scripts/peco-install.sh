#!/bin/bash

# Add peco to omf
sudo -u $SUDO_USER fish -c "omf install peco"

# Install peco system-wide
apt install -y peco

# Add ctrl+r shortcut
echo "
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end
" >> ~/.config/fish/config.fish

