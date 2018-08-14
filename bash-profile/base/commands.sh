#!/usr/bin/env bash

# ----------------------------------------------------
# extract: Extract most know archives with one command
# ----------------------------------------------------
function extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

# ------------------
# Update my bash env
# ------------------
function bash-update() {
    echo "source $HOME/.bash_profile";
    source $HOME/.bash_profile;
}

# ---------------
# Update Homebrew
# ---------------
function brew-update() {
    echo "Updating brew formula...";
    brew upgrade; brew cleanup; brew doctor;
}
