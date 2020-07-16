[[ -f ~/.bash_alias ]] && source ~/.bash_alias
[[ -f ~/.bash_profile ]] && source ~/.bash_profile
[[ -f /usr/share/fzf/completion.bash ]] && source /usr/share/fzf/completion.bash
[[ -f /usr/share/fzf/key-bindings.bash ]] && source /usr/share/fzf/key-bindings.bash

# Uncomment to enable auto lock screen after few minutes
# [[ -f ~/.dotfiles/scripts/blurlock ]] && source ~/.dotfiles/scripts/blurlock

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\033[38;5;40m\]\u\[$(tput sgr0)\]\[\033[38;5;34m\]@\[$(tput sgr0)\]\[\033[38;5;40m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \W \\$ \[$(tput sgr0)\]"

export TERM="xterm-256color"
export PATH="$PATH:~/.dotnet/tools"
export DOTNET_ROOT=/opt/dotnet
export PATH="$PATH:~/.local/bin"
