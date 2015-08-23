# The following lines were added by compinstall
zstyle :compinstall filename '/home/raviqqe/.zshrc'

autoload -Uz compinit
autoload -U colors
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch
unsetopt beep notify
bindkey -e
# End of lines configured by zsh-newuser-install

alias ls='ls --color=auto'
#alias ls='ls -F'
PROMPT='%n@%m %~ %(?..[%?] )%# '
PROMPT2='%_> '
RPROMPT=' %W %T' # doesn't work well...

# environment valiables
export PATH=$HOME/bin:$HOME/local/bin:$PATH

alias mount_my_nfs='mount -t nfs 192.168.0.64:/usr/home/nfs /mnt'
