#!/bin/bash

#   -------------------------------
#   Auto Tab Complete
#   -------------------------------

# AWS CLI autocomplete:
complete -C aws_completer aws

# Bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
