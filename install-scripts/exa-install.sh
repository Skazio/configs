# Install exa
curl -L https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-v0.10.1.zip > exa-linux.zip
unzip -d exa-linux/ exa-linux.zip
mv exa-linux/bin/* /usr/local/bin/
mv exa-linux/man/* /usr/share/man/man1/
mv exa-linux/completions/exa.fish /usr/share/fish/vendor_completions.d/
rm -r exa-linux/
rm -r exa-linux.zip

# Add alias
echo "
if type -q exa
	alias ll \"exa -l -g --icons\"
	alias lla \"ll -a\"
end
" >> ~/.config/fish/fish.config

