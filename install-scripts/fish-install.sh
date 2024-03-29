#!/bin/bash

# Install Fish
apt-add-repository -y ppa:fish-shell/release-3
apt update
apt install -y fish

# Install OMF (package + theme manager)
sudo -u $SUDO_USER curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install > install
# --noninteractive prevents a new shell to start
sudo -u $SUDO_USER fish install --noninteractive

# Install bobthefish theme
sudo -u $SUDO_USER fish -c "omf install bobthefish"

# Create config file
sudo -u $SUDO_USER mkdir -p $USER_HOME/.config/fish
sudo -u $SUDO_USER touch $USER_HOME/.config/fish/config.fish

# Set colorscheme + theme font
echo "set -g theme_color_scheme nord" >> $USER_HOME/.config/fish/config.fish
echo "set -g theme_nerd_fonts yes" >> $USER_HOME/.config/fish/config.fish

# Add aliases
echo "alias gs='git status'" >> $USER_HOME/.config/fish/config.fish
echo "alias gl='git log'" >> $USER_HOME/.config/fish/config.fish
echo "alias ga='git add'" >> $USER_HOME/.config/fish/config.fish
echo "alias gc='git commit'" >> $USER_HOME/.config/fish/config.fish
echo "alias gck='git checkout'" >> $USER_HOME/.config/fish/config.fish
echo "alias gd='git diff'" >> $USER_HOME/.config/fish/config.fish

# Give permisions back to config and local files
chown -R $SUDO_USER:$SUDO_USER $USER_HOME/.config/
chown -R $SUDO_USER:$SUDO_USER $USER_HOME/.local

# Update the config file
source $USER_HOME/.config/fish/config.fish

