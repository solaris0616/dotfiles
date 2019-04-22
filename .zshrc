export LANG=ja_JP.UTF-8
case ${UID} in
0)
    LANG=C
    ;;
esac

autoload -Uz compinit
compinit

autoload -Uz colors
colors

setopt auto_pushd
setopt pushd_ignore_dups
setopt magic_equal_subst
setopt print_eight_bit
setopt hist_ignore_dups
setopt inc_append_history

PROMPT='[%F{magenta}%B%n%b%f@%F{blue}%U%m%u%f]# '
RPROMPT='[%F{green}%d%f]'

alias ls="ls -G"
alias l="ls -G"
alias ll='ls -alG'
alias la="ls -AG"

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
