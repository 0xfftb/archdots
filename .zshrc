export ZSH="$HOME/.oh-my-zsh"
export SUDO_EDITOR="/usr/bin/nvim"

ZSH_THEME="robbyrussell"

plugins=(git sudo colorize)

source $ZSH/oh-my-zsh.sh

# suckless config
alias dwmc="sudoedit /usr/src/dwm/config.h"
alias dwmb="cd /usr/src/dwm && sudo make clean install && cd"
alias dmenuc="sudoedit /usr/src/dmenu/config.h"
alias slockc="sudoedit /usr/src/slock/config.h"

# foundry
alias fgb="forge build"
alias fgt="forge test"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
