#!/bin/bash

# --------------
# Quick Commands
# --------------
start-workday() {
    source $HOME/.bash_profile;

    # Update vault
    # Requires SEA password
    printHeader "Update Vault token";
    vault_update;
    
    printHeader "Update brew formula";
    brew_update;
}

# -----------------
# Homebrew Commands
# -----------------
function brew_update() {
    brew upgrade; brew cleanup; brew doctor;
}

# --------------
# Vault Commands
# --------------

# Get a vault token, variables are on my local computer to hide the data
function vault_update() {
    vault login -address=$VAULT_EXPEDIA_ADDRESS -method=$VAULT_METHOD username=$VALUT_USERNAME
}
