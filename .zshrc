# by itang
PROMPT='[%n@%m %~]$ '

# HANDLING URLS WITH URL-QUOTE-MAGIC
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

alias ll='ls -l'
alias -s tex=emacs
alias -s html=google-chrome

# End 

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
setopt appendhistory autocd extendedglob nomatch notify correct_all
unsetopt beep
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/itang/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
