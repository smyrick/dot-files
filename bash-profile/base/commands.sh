#!/usr/bin/env bash

# ---------------------------------------------------
# printHeader: print text in color appending '-----'
# string to the start and to the end
#
# Params:
#   $1 = string to print
#   $2 = tput color code, default 14 (light-blue)
# ---------------------------------------------------
printHeader () {
    colorCode=14
    echo "$(tput setaf ${2-${colorCode}})----- $1 -----$(tput sgr 0)"
}


# ----------------------------------------------------
# extract: Extract most know archives with one command
# ----------------------------------------------------
extract () {
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