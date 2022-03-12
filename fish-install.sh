# Install Fish
apt-add-repository ppa:fish-shell/release-3
apt update
apt install fish

# Install OMF (package + theme manager)
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# Install bobthefish theme
omf install bobthefish

# Set colorscheme + theme font
echo "set -g theme_color_scheme nord" >> ~/.config/fish/config.fish
echo "set -g theme_nerd_fonts yes" >> ~/.config/fish/config.fish

# Add aliases
echo "alias gs='git status'" >> ~/.config/fish/config.fish
echo "alias gl='git log'" >> ~/.config/fish/config.fish
echo "alias ga='git add'" >> ~/.config/fish/config.fish
echo "alias gc='git commit'" >> ~/.config/fish/config.fish
echo "alias gck='git checkout'" >> ~/.config/fish/config.fish
echo "alias gd='git diff'" >> ~/.config/fish/config.fish

# Update the config file
source ~/.config/fish/config.fish

