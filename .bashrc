# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

#.bash_local is intended for machine-specific code
if [ -f ~/.bash_local ]; then 
  . ~/.bash_local; 
fi 

set -o vi

alias config='$(which git) --git-dir=$HOME/.cfg/ --work-tree=$HOME'

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

