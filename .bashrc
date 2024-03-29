# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

#.bash_local is intended for machine-specific code
if [ -f ~/.bash_local ]; then 
  . ~/.bash_local; 
fi 

set -o vi
bind -m vi-insert "\C-l":clear-screen
bind -m vi-command "\C-l":clear-screen

# To install config files to new system
# git clone --bare https://github.com/arnold-jr/.cfg.git $HOME/.cfg
alias config='$(which git) --git-dir=$HOME/.cfg/ --work-tree=$HOME'
# config config --local status.showUntrackedFiles no
# config checkout


alias ll="ls -lha"
alias speedtest="wget --output-document=/dev/null \
  http://speedtest.wdc01.softlayer.com/downloads/test500.zip"

ipaddr() { (awk '{print $2}' <(ifconfig en0 | grep 'inet ')); }

# Less Colors for Man Pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;38;5;208m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[04;38;5;111m'

function ppath() {
    old=$IFS
    IFS=:
    printf "%s\n" $PATH
    IFS=$old
}

export -f ppath

function pldpath() {
    old=$IFS
    IFS=:
    printf "%s\n" $LD_LIBRARY_PATH
    IFS=$old
}

export -f pldpath
