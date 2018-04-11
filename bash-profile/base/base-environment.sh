#!/bin/bash

#   -------------------------------
#   Environment Configuration
#   -------------------------------

#   Change Prompt
export PS1="----------------------------\n[\e[0;36m\w\e[m] \n| => "
export PS2="| => "

#   Set Default Path
export PATH=/usr/local/bin:/usr/local:/usr/local/bin/git:/usr/bin:/bin:/usr/sbin:/sbin:/opt/bin

#   Set default blocksize for ls, df, du
export BLOCKSIZE=1k
