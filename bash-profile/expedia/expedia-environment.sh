#!/bin/bash

# Set Max file size
# -------------------------------------------------------------------
    ulimit -n 65536
    ulimit -u 2048

# Perforce file mappings
# -------------------------------------------------------------------
    P4_ROOT=$HOME/src/perforce
    P4_1994=$P4_ROOT/1994

    # Perforce ExpWeb configs
    export P4CONFIG=p4.ini

    # Build / Output paths
    export OUTPUT_ROOT=$HOME/build
    export TEMP=$HOME/temp



# Java, Tomcat, Maven, and Ant Paths
# -------------------------------------------------------------------

    # Java Path
    #export JAVA_VERSION=1.7.0_60
    export JAVA_VERSION=1.8.0_74
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk$JAVA_VERSION.jdk/Contents/Home

    # Maven Path
    export MAVEN_VERSION=3.3.9
    export MAVEN_HOME=/usr/local/Cellar/maven/$MAVEN_VERSION/libexec
    export M3_HOME=$MAVEN_HOME

    # Add to PATH
    export PATH=$PATH:$JAVA_HOME/bin:$ANT_HOME/bin:$M3_HOME/bin
