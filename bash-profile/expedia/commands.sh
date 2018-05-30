#!/bin/bash

# --------------
# Quick Commands
# --------------
start-workday() {
    source $HOME/.bash_profile;
    
    printHeader "Update brew formula";
    brew_update;
}

# -----------------
# Homebrew Commands
# -----------------
function brew_update() {
    brew upgrade; brew cleanup; brew doctor;
}
