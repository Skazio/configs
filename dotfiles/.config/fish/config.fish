set -x EDITOR /usr/local/bin/nvim

alias gs='git status'
alias gl='git log'
alias ga='git add'
alias gc='git commit'
alias gck='git checkout'
alias gd='git diff'
alias grs='git restore --staged'
alias g↑='git push'

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end


if type -q exa
	alias ll   "exa -l -g --header --icons"
	alias lla  "ll -ah"
	alias llt  "ll --tree -L 2"
	alias llta "llt -ha"
end

alias cat='batcat'
alias rcat='/bin/cat'
alias python='python3'
alias f="fish"
alias t='tmux'
alias ta='tmux attach'
alias vim='nvim'
alias z='zellij'

# Ensure Docker is running on WSL 2. This expects you've installed Docker and
# Docker Compose directly within your WSL distro instead of Docker Desktop, such as:
#   - https://docs.docker.com/engine/install/ubuntu/#install-using-the-convenience-script
#   - https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user
#   - https://docs.docker.com/compose/install/linux/
if grep -q "microsoft" /proc/version > /dev/null 2>&1
    if service docker status 2>&1 | grep -q "is not running"
        wsl.exe --distribution "$WSL_DISTRO_NAME" --user root --exec /usr/sbin/service docker start > /dev/null 2>&1
    end
end

alias fishrc='nvim ~/.config/fish/config.fish'
alias vimrc='cd ~/.config/nvim && nvim . ; cd -'
alias tmuxrc='nvim ~/.tmux.conf'
alias zellijrc='nvim ~/.config/zellij/config.kdl'

abbr -a awk --position anywhere --set-cursor "awk '{%}'"

