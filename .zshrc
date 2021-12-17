#!/usr/bin/env zsh
export MAIL="csejault@student.42.fr" 
export PROMPT='%F{#ff00ff}%/%f %F{#5fd7ff}%# '
export PATH=$HOME/.brew/bin:$PATH
export EDITOR=vim
export SGOINFRE="/sgoinfre/goinfre/Perso/csejault"
export GOINFRE="/goinfre/csejault"
alias gccf="gcc -Wall -Werror -Wextra"
alias ll="ls -l"
alias la="ls -la"
alias lr="ls -la *"
alias sgoinfre="cd $SGOINFRE"
alias goinfre="cd $GOINFRE"
alias dbt="docker build -t"
alias db="docker build"
alias drit="docker run -it"
alias dritrm="docker run -it --rm"
alias cm="$SGOINFRE/ClassMaker/ClassMaker"
