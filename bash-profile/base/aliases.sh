#!/usr/bin/env bash

# Preferred 'ls' implementation
alias ll='ls -FGlAhp'

# Always list directory contents upon 'cd'
cd() { builtin cd "$@"; ll; }

# Go back 1 directory level (for fast typers)
alias cd..='cd ../'

# Go back 1 directory level
alias ..='cd ../'

# Go back 2 directory levels
alias ...='cd ../../'

# Go back 3 directory levels
alias ....='cd ../../../'

# Hub is an extenstion to the git CLI
# https://hub.github.com/
alias git=hub
