#!/usr/bin/env bash

# ------------------------------------------------------------
# printHeader: print text in color appending '-----' string to the start and end
#   $1 = string to print
#   $2 = tput color code, default 14 (light-blue)
# ------------------------------------------------------------
printHeader () {
    colorCode=14
    echo "$(tput setaf ${2-${colorCode}})----- $1 -----$(tput sgr 0)"
}