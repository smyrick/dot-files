#!/bin/bash

#   -------------------------------
#   Auto Tab Complete
#   -------------------------------

    # AWS CLI autocomplete:
    complete -C aws_completer aws

    # Bash completion
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi
