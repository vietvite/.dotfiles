# source global defenitions
[[ -f ~/.bash_alias ]] && source ~/.bash_alias
[[ -f ~/.bash_profile ]] && source ~/.bash_profile
[[ -f /usr/share/fzf/completion.bash ]] && source /usr/share/fzf/completion.bash
[[ -f /usr/share/fzf/key-bindings.bash ]] && source /usr/share/fzf/key-bindings.bash
# ls-icon instead core ls
[[ -f /opt/coreutils/bin/ls ]] && alias ls=/opt/coreutils/bin/ls
# Uncomment to enable auto lock screen after few minutes
# [[ -f ~/.dotfiles/scripts/blurlock ]] && source ~/.dotfiles/scripts/blurlock

# PS1 theme
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' | sed 's/^/ /'
}
CHOP_COLOR="\[$(tput sgr0)\]"
COLOR_BLUE="\[\033[38;5;37m\]"
COLOR_GREEN="\[\033[38;5;112m\]"
USERNAME_SHORT="\u"
HOSTNAME_SHORT="\h"
DIRNAME_BASE="\W"
export PS1="[$COLOR_BLUE$USERNAME_SHORT@$HOSTNAME_SHORT$CHOP_COLOR] $DIRNAME_BASE$COLOR_GREEN"'$(parse_git_branch)'"$CHOP_COLOR \$ "

