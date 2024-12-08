# Dotfiles

## Requirement

### nvim

#### Tree-sitter

In order to have `tree-sitter` to auto-install parser when opening a file, we
need to install `tree-sitter` CLI:

- [Installation](https://github.com/tree-sitter/tree-sitter/blob/master/cli/README.md)

```bash
npm install -g tree-sitter-cli
```

#### Telescope

In order to have `telescope` to use `live_grep` and `grep_string`, we need to
install `ripgrep`:

- [Installation](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation)

#### LuaSnip

In order for `LuaSnip` placeholders to work, we need to install `jsregexp`

Requirement:

```bash
luajit -v
LuaJIT 2.1.1716656478 -- Copyright (C) 2005-2023 Mike Pall. https://luajit.org/
```

Download the latest `luarocks` tarball and install it:

```bash
curl -R -O https://luarocks.github.io/luarocks/releases/luarocks-3.11.1.tar.gz
tar -zxf luarocks-3.11.1.tar.gz
cd luarocks-3.11.1/
./configure
sudo make install
```

**NB**: The `./configure` command should say something like:

```bash
Configuring LuaRocks version 3.11.1...

Lua version detected: 5.1
Lua interpreter found: /opt/homebrew/bin/luajit
lua.h found: /opt/homebrew/include/luajit-2.1/lua.h
unzip found in PATH: /usr/bin

Done configuring.

LuaRocks will be installed at......: /usr/local
LuaRocks will install rocks at.....: /usr/local
LuaRocks configuration directory...: /usr/local/etc/luarocks
Using Lua from.....................: /opt/homebrew

* Type make and make install:
  to install to /usr/local as usual.
* Type make bootstrap:
  to install LuaRocks into /usr/local as a rock.
```

We **need** to have `lua 5.1`, because at the time of writing that is the
version that `nvim` uses.

Then install `jsregexp`:

```bash
sudo luarocks install jsregexp
```
