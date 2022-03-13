#!/bin/bash

# Add the execution flag
chmod +x install-scripts/misc-install.sh
chmod +x install-scripts/fish-install.sh
chmod +x install-scripts/peco-install.sh
chmod +x install-scripts/exa-install.sh

# Start all the scripts
./install-scripts/misc-install.sh
./install-scripts/fish-install.sh
./install-scripts/peco-install.sh
./install-scripts/exa-install.sh

