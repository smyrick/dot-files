#!/bin/bash

#   -------------------------------
#   Auto Tab Complete
#   -------------------------------

    # HomeBrew autocomplete:
    source $(brew --repository)/Library/Contributions/brew_bash_completion.sh

    # AWS CLI autocomplete:
    complete -C aws_completer aws
