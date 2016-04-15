#!/bin/bash

#   -------------------------------
#   Commands
#   -------------------------------

    TRUNK=$P4_1994/www/expweb/trunk
    EXP_DEVOPS=$HOME/src/git/exp-devops

    # Quick Commands
    # -------------------------------------------------------------------
      start-workday() {
        source ~/.bash_profile;
        command cd;
        printHeader "Update brew formula";
        brew update; brew upgrade --all; brew cleanup; brew doctor;
        printHeader "Update npm packages";
        npm update -g;
        printHeader "Update exp-devops";
        command cd ${EXP_DEVOPS}; git checkout master; git pull upstream master; git push;
        command cd;
      }




    # ExpWeb Commands
    # -------------------------------------------------------------------
      alias cd-expweb="command cd $TRUNK"
      alias gw="./gradlew"
      alias expweb-clean="sudo rm -rf $TRUNK/build"
      alias expweb-build="cd-expweb; expweb-clean; gw clean build"
      alias expweb-build-fast="cd-expweb; expweb-clean; gw clean build -xCheck -x minifyResources -Pdebug"
      alias expweb-start="cd-expweb; expweb-clean; gw -Pdebug startExpweb"
      alias expweb-start-stub="cd-expweb; expweb-clean; gw -Pdebug -Pstub startExpweb"
      alias expweb-latest-version="cd-expweb; p4 counters -e expweb_trunk-ci_last_green_cl | ggrep -oP '(\d)+'"
      expweb-sync-latest() {
        eval "cd-expweb";
        p4 sync ${TRUNK}/...@$(expweb-latest-version);
      }


    # Docker Commands
    # -------------------------------------------------------------------
      alias docker-start-vm="docker-machine create --driver=virtualbox default"
      #docker-start-terminal() {
      #  eval "$(docker-machine env default)";
      #}
