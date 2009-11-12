if [ -f /opt/local/bin/port ]; then
  export PATH=/opt/local/bin:/opt/local/sbin:$PATH
  export MANPATH=/opt/local/share/man:$MANPATH
fi


# ls colors:
export CLICOLOR=1
export LSCOLORS=cxfxcxdxBxegedabagacad

export GREP_OPTIONS="--color=auto"
export HISTIGNORE="&:ls:[bf]g:exit"

export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '

if [ -f /opt/local/etc/bash_completion ]; then
     . /opt/local/etc/bash_completion
fi
