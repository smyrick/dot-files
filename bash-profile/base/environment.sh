#!/bin/bash

#   -------------------------------
#   Environment Configuration
#   -------------------------------

#   Change Prompt
export PS1="-------------------------------\n[\e[0;36m\w\e[m]\e[0;35m\$(parse-git-branch)\e[m "

#   Set Default Path
export PATH=/usr/local/bin:/usr/local:/usr/bin:/bin:/usr/sbin:/sbin:/opt/bin

#   Set default blocksize for ls, df, du
export BLOCKSIZE=1k

# Set ls colors for black terminal
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
