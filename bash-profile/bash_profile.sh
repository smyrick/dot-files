#!/usr/bin/env bash

# Initialize bash environment
#
# Shane Myrick
# swmyrick@gmail.com
#
# Heavily inspired from: http://natelandau.com/my-mac-osx-bash_profile/

DIR="$( dirname "${BASH_SOURCE[0]}" )"
source ${DIR}/base/index.sh;

DIR="$( dirname "${BASH_SOURCE[0]}" )"
source ${DIR}/tools/index.sh;

DIR="$( dirname "${BASH_SOURCE[0]}" )"
source ${DIR}/expedia/index.sh;
