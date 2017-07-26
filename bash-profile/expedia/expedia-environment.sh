#!/bin/bash

# File paths
# -------------------------------------------------------------------

    # P4 Shortcut paths
    P4_ROOT=$HOME/src/perforce
    P4_1953=$P4_ROOT/1953
    P4_1967=$P4_ROOT/1967
    P4_1994=$P4_ROOT/1994
    P4_1970=$P4_ROOT/1970
    E3_SHOPSVC=$P4_1953/e3/components/shopsvc
    E3_MODULES=$E3_SHOPSVC/modules
    E3_PRODUCTS=$E3_SHOPSVC/products
    E3_PROTOTYPES=$E3_SHOPSVC/prototypes/modules

    # ExpWeb trunk
    export TRUNK=$P4_1994/www/expweb/trunk

    # Github repos path
    GITHUB_REPOS=$HOME/src/github

    # EWE GitHub repos path
    EWE_GITHUB_REPOS=$HOME/src/ewegithub

    # Build / Output paths
    export OUTPUT_ROOT=$HOME/build
    export TEMP=$HOME/temp

    # Perforce ExpWeb configs
    export P4CONFIG=p4.ini

    # Build / Output paths
    export OUTPUT_ROOT=$HOME/build
    export TEMP=$HOME/temp
