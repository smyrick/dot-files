#!/bin/bash

# Set Max file size
# -------------------------------------------------------------------
    ulimit -n 65536
    ulimit -u 2048

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
    TRUNK=$P4_1994/www/expweb/trunk

    # ExpDevops repo
    EXP_DEVOPS=$HOME/src/git/exp-devops

    # Build / Output paths
    export BUILD_SYSTEM_ROOT=$P4_1967/depot/b/releasemanagement/products/BuildSystem
    export OUTPUT_ROOT=$HOME/build
    export TEMP=$HOME/temp

    # Perforce ExpWeb configs
    export P4CONFIG=p4.ini

    # Build / Output paths
    export OUTPUT_ROOT=$HOME/build
    export TEMP=$HOME/temp



# Java, Tomcat, Maven, and Ant Paths
# -------------------------------------------------------------------

    # Java Path
    export JAVA_VERSION=1.7.0_60
    #export JAVA_VERSION=1.8.0_74
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk$JAVA_VERSION.jdk/Contents/Home

    # Maven Path
    export MAVEN_VERSION=3.3.9
    export MAVEN_HOME=/usr/local/Cellar/maven/$MAVEN_VERSION/libexec
    export M3_HOME=$MAVEN_HOME

    # Ant Path
    export ANT_VERSION=1.8.1
    export ANT_HOME=$BUILD_SYSTEM_ROOT/buildsupport/apache-ant-$ANT_VERSION

    # Add to PATH
    export PATH=$PATH:$JAVA_HOME/bin:$ANT_HOME/bin:$M3_HOME/bin
