# configs

This hosts my configuration files.

## Fonts

For `bobthefish` to correctly work, use `SourceCodePro` font from either or :
- [nerd-fonts](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SourceCodePro/Regular) (Recommended)
- [powerline](https://github.com/powerline/fonts/tree/master/SourceCodePro) (Compatibility issues)

## Automated install

To automatically install everything, just type in a terminal :
```bash
git clone https://github.com/Skazio/configs.git && cd configs/ && chmod +x setup.sh && sudo ./setup.sh
```

## Manual install

Some programs are not automatically installed (see [Optional install section](#optional-install)) and/or if you want to only install some of them, go into `install-scripts/` and
```bash
chmod +x <script-name.sh> && sudo ./<script-name.sh>
```

## Optional installs	

Here are the list of the scripts which are not automatically ran by `setup.sh` :

- `nvm-install.sh`

