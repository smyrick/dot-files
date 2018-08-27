#!/bin/bash

#   -------------------------------
#   Auto Tab Complete
#   -------------------------------

# AWS CLI autocomplete:
complete -C aws_completer aws


# FZF A command-line fuzzy finder
# https://github.com/junegunn/fzf
[ -f $HOME/.fzf.bash ] && source $HOME/.fzf.bash


# Bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
