# configs

This hosts my configuration files.

## Fonts

For `bobthefish` to correctly work, use a [Nerd Font](https://www.nerdfonts.com/). Here's a nice recommendation:

- Roboto Mono Nerd Font

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

`vscode-config` is not automatically installed.

## WSL

If using nvim inside WSL here's the steps to get system copy paste + host copy paste.

Use `win32yank`, it's much faster than using powershell and xclip.

1. Download the `win32yank` binary [here](https://github.com/equalsraf/win32yank/releases)
2. Copy it to `/usr/local/bin`
3. Then `chmod +x win32yank.exe`
4. After that add this to your neovim config:
    ```lua
    if vim.fn.has('wsl') == 1 then
        vim.g.clipboard = {
            name = "win32yank-wsl",
            copy = {
                ["+"] = "win32yank.exe -i --crlf",
                ["*"] = "win32yank.exe -i --crlf",
            },
            paste = {
                ["+"] = "win32yank.exe -o --lf",
                ["*"] = "win32yank.exe -o --lf",
            },
            cache_enabled = true,
        }
    end
    ```

