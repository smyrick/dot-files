#!/bin/bash

#   -----------------------------
#   Terminal Commands
#   -----------------------------

    # Shortcut commands
    # -------------------------------------------------------------------
      alias cp='cp -iv'                           # Preferred 'cp' implementation
      alias mv='mv -iv'                           # Preferred 'mv' implementation
      alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
      alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
      alias less='less -FSRXc'                    # Preferred 'less' implementation
      cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
      alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
      alias ..='cd ../'                           # Go back 1 directory level
      alias ...='cd ../../'                       # Go back 2 directory levels
      alias .3='cd ../../../'                     # Go back 3 directory levels
      alias .4='cd ../../../../'                  # Go back 4 directory levels
      alias .5='cd ../../../../../'               # Go back 5 directory levels
      alias .6='cd ../../../../../../'            # Go back 6 directory levels
      alias edit='subl'                           # edit:         Opens any file in sublime editor
      alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
      alias c='clear'                             # c:            Clear terminal display
      alias which='type -all'                     # which:        Find executables
      alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
      alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
      alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
      mkcd () { mkdir -p "$1" && cd "$1"; }       # mkcd:          Makes new Dir and jumps inside
      trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
      ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
      alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop
      chrome () {
          if [[ $1 == "http://"* ]] || [[ $1 == "https://"* ]] || [[ $1 == "file://"* ]]
          then
              open -a Google\ Chrome.app "$1";
          else
              open -a Google\ Chrome.app http://"$1";
          fi
      }

    # lr:  Full Recursive Directory Listing
    # -------------------------------------------------------------------
        alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

    #   mans:   Search manpage given in agument '1' for term given in argument '2' (case insensitive)
    #           displays paginated result with colored search terms and two lines surrounding each hit.             Example: mans mplayer codec
    #   --------------------------------------------------------------------
        mans () {
            man $1 | grep -iC2 --color=always $2 | less
        }

    #   showa: to remind yourself of an alias (given some part of it)
    #   ------------------------------------------------------------
        showa () { /usr/bin/grep --color=always -i -a1 $@ ~/Library/init/bash/aliases.bash | grep -v '^\s*$' | less -FSRXc ; }

    #   printHeader: print text in color appending '-----' string to the start and end
    #   $1 = string to print
    #   $2 = tput color code, default 14 (light-blue)
    #   ------------------------------------------------------------
        printHeader () {
          colorCode=14
          echo "$(tput setaf ${2-$colorCode})----- $1 -----$(tput sgr 0)"
        }

#   -------------------------------
#   FILE AND FOLDER MANAGEMENT
#   -------------------------------

    zipf () { zip -r "$1".zip "$1" ; }          # zipf:         To create a ZIP archive of a folder
    alias numFiles='echo $(ls -1 | wc -l)'      # numFiles:     Count of non-hidden files in current dir

    #   cdfinder:  'Cd's to frontmost window of MacOS Finder
    #   ------------------------------------------------------
        cdfinder() {
            target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
            if [ "$target" != "" ]; then
                cd "$target"; pwd
            else
                echo 'No Finder window found' >&2
            fi
        }

    #   extract:  Extract most know archives with one command
    #   ---------------------------------------------------------
        extract () {
            if [ -f $1 ] ; then
              case $1 in
                *.tar.bz2)   tar xjf $1     ;;
                *.tar.gz)    tar xzf $1     ;;
                *.bz2)       bunzip2 $1     ;;
                *.rar)       unrar e $1     ;;
                *.gz)        gunzip $1      ;;
                *.tar)       tar xf $1      ;;
                *.tbz2)      tar xjf $1     ;;
                *.tgz)       tar xzf $1     ;;
                *.zip)       unzip $1       ;;
                *.Z)         uncompress $1  ;;
                *.7z)        7z x $1        ;;
                *)     echo "'$1' cannot be extracted via extract()" ;;
                 esac
             else
                 echo "'$1' is not a valid file"
             fi
        }


#   ---------------------------
#   SEARCHING
#   ---------------------------

    alias qfind="find . -name "                 # qfind:    Quickly search for file
    ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
    ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
    ffe () { /usr/bin/find . -name '*'"$@" ; }  # ffe:      Find file whose name ends with a given string

    #   spotlight: Search for a file using MacOS Spotlight's metadata
    #   -----------------------------------------------------------
        spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }


#   ---------------------------------------
#   SYSTEMS OPERATIONS & INFORMATION
#   ---------------------------------------

    #   finderShowHidden:   $1 = "TRUE" || "FALSE"
    #   -------------------------------------------------------------------
        finderShowHidden () {
            defaults write com.apple.finder ShowAllFiles "$1";
        }
