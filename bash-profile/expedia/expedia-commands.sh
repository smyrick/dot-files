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
        command cd $HOME;
      }

    # Ant Commands
    # -------------------------------------------------------------------
      alias ab="ant clean build"
      alias abe="ant clean build eclipse"
      alias acb="ant clear-all clean build"
      alias ad="ant undeploy deploy"
      alias abd="ant clean build undeploy deploy"
      alias abdd="ant clean build undeploy debug deploy"
      alias abde="ant clean build undeploy deploy eclipse"

    # NLP Commands
    # -------------------------------------------------------------------
      alias cd-nlp="cd $E3_MODULES/naturallanguageparser/core/pSprint.0"
      alias cd-nlp-tools="cd $E3_MODULES/naturallanguageparser/tools/pSprint.0"
      alias cd-nlp-rest="cd $E3_MODULES/naturallanguageparser/rest/pSprint.0"
      alias cd-nlp-int="cd $E3_MODULES/naturallanguageparser/interface/pSprint.0"
      alias cd-nlp-test="cd $E3_MODULES/naturallanguageparser/testautomation/pSprint.0"
      alias cd-nlp-svc="cd $E3_PRODUCTS/naturallanguageparser/restsvc/pSprint.0"
      alias cd-nlp-pipeline="cd $E3_PROTOTYPES/NLPPipeline/pSprint.0"
      alias nlp-build-all="cd-nlp; ab; cd-nlp-tools; ab; cd-nlp-int; ab; cd-nlp-rest; ab; cd-nlp-svc; ab"
      alias nlp-build-deploy="nlp-build-all; cd-nlp-svc; ad"
      alias nlp-ner-train="cd-nlp-svc; ant -DtrainProps=$E3_PRODUCTS/naturallanguageparser/restsvc/pSprint.0/data/ner/en_US/train_common.prop train-ner"
      alias nlp-ner-test="cd-nlp-svc; ant -DtestFile=$E3_PROTOTYPES/NLPPipeline/pSprint.0/data/ner/eval/dev/dev_sync.bio.utf16.txt test-ner"
      nlp-ner-extract() { nlp-svc; ant -DqueryFile="$1" ner-extract; }
      alias nlp-sync="cd-nlp; p4 sync ...; \
                      cd-nlp-tools; p4 sync ...; \
                      cd-nlp-int; p4 sync ...; \
                      cd-nlp-rest; p4 sync ...; \
                      cd-nlp-svc; p4 sync ...; \
                      cd-nlp-pipeline; p4 sync ...;"

    # Nautilus Commands
    # -------------------------------------------------------------------
      alias cd-nautilus-int="cd $E3_MODULES/nautilus/interface/pSprint.0"
      alias cd-nautilus-rest="cd $E3_MODULES/nautilus/rest/pSprint.0"
      alias cd-nautilus-contract="cd $E3_MODULES/nautilus/contract/pSprint.0"
      alias cd-nautilus-test="cd $E3_MODULES/nautilus/testautomation/pSprint.0"
      alias cd-nautilus-svc="cd $E3_PRODUCTS/nautilus/restsvc/pSprint.0"
      alias cd-nautilus-svc-test="cd $E3_PRODUCTS/nautilus/testautomation/pSprint.0"
      alias cd-nautilus-grinder="cd $E3_PROTOTYPES/nautilus/nautilusGrinder"
      alias nautilus-sync="cd-nautilus-int; p4 sync ...; \
                           cd-nautilus-rest; p4 sync ...; \
                           cd-nautilus-contract; p4 sync ...; \
                           cd-nautilus-svc; p4 sync ...;"

    # SmartData Commands
    # -------------------------------------------------------------------
      alias cd-smartdata-common="cd $E3_MODULES/smartdata/common/pSprint.0"
      alias cd-smartdata-finder="cd $E3_MODULES/smartdata/finder/impl/pSprint.0"
      alias cd-smartdata-finder-int="cd $E3_MODULES/smartdata/finder/interface/pSprint.0"
      alias cd-smartdata-finder-grid="cd $E3_MODULES/smartdata/finder/grid/inproc/pSprint.0"
      alias cd-smartdata-finder-svc="cd $E3_PRODUCTS/smartfinderservice/pSprint.0"
      alias cd-smartdata-review="cd $E3_MODULES/smartdata/reviews/impl/pSprint.0"
      alias cd-smartdata-smartsearch="cd $E3_PROTOTYPES/smartsearch"
      alias smartdata-sync="cd-smartdata-common; p4 sync ...; \
                            cd-smartdata-finder-int; p4 sync ...; \
                            cd-smartdata-finder-grid; p4 sync ...; \
                            cd-smartdata-finder; p4 sync ...; \
                            cd-smartdata-finder-svc; p4 sync ...; \
                            cd-smartdata-review; p4 sync ...; \
                            cd-smartdata-smartsearch; p4 sync ...;"




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
