#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

startx
. "$HOME/.cargo/env"
export GPG_TTY=$(tty)
