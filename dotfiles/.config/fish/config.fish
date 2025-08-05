if status is-interactive
    # Commands to run in interactive sessions can go here
end

#add homebrew binaries to PATH
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path /usr/local/bin

set --export VIRTUAL_ENV_DISABLE_PROMPT 1
set --export EDITOR /opt/homebrew/bin/nvim
# set -x EDITOR /usr/local/bin/nvim

# allow sudo to use alias
function sudo
    if functions -q $argv[1]
        set argv fish -c "$argv"
    end
    command sudo $argv
end

function fish_user_key_bindings
    bind \cx\ce edit_command_buffer
end

# git
alias gs='git status'
alias gl='git log'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit'
alias gcv='git commit --no-verify'
alias gck='git checkout'
alias gd='git diff'
alias grs='git restore --staged'
alias gri='git rebase -i'
alias gsh='git stash'
alias gsp='git stash pop'
alias gsl='git stash list'
alias wip='git add --all && gc -m "WIP" --no-verify'
alias unwip='git reset --soft HEAD^1'
alias gb='gck dev && git pull && gck -b '

# bat
alias cat="bat"
alias rcat="/bin/cat"

# exa
alias ll="exa -l -g --header --icons --sort=type"
alias lla="ll -a"
alias llt="ll --tree -L 2"
alias llta="llt -a"

# peco
bind \cr 'peco_select_history (commandline -b)'

# python
alias python="python3"
alias pip="pip3"

alias wrap_on='echo -ne "\e[?7l"'
alias wrap_off='echo -ne "\e[?7h"'

# ls remap
# bind \cf 'll ; commandline -f execute'
bind \ch 'lla ; commandline -f execute'

# source env remap
bind \cs 'source .venv/bin/activate.fish; commandline -f execute; echo "python venv sourced."'

# config
alias fishrc='nvim ~/.config/fish/config.fish'
alias vimrc='nvim ~/.config/nvim/init.lua'
alias tmuxrc='nvim ~/.tmux.conf'
alias zellijrc='nvim ~/.config/zellij/config.kdl'
alias reload='source ~/.config/fish/config.fish'

# programs <3
alias vim="nvim"
alias t='tmux'
alias z='zellij --layout ~/.config/zellij/config.kdl'

abbr -a awk --position anywhere --set-cursor "awk '{%}'"
