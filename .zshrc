# The following lines were added by compinstall
zstyle :compinstall filename '/home/raviqqe/.zshrc'

autoload -Uz compinit
autoload -U colors
compinit


# history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# options
setopt appendhistory autocd extendedglob
unsetopt beep notify nomatch

# key binds
bindkey -e
bindkey "^[[3~" delete-char

# aliases
alias ls='ls --color=auto'

# prompt
PROMPT='%n@%m %~ %(?..[%?] )%# '
PROMPT2='%_> '
RPROMPT=' %W %T' # doesn't work well...

# environment valiables
export LOCAL=$HOME/local
export PATH=$HOME/bin:$LOCAL/bin:$PATH
export LIBRARY_PATH=$LOCAL/lib:$LIBRARY_PATH
export LD_LIBRARY_PATH=$LOCAL/lib:$LD_LIBRARY_PATH
