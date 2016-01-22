# .bash_profile
#
# Shane Myrick
# swmyrick@gmail.com
#
# Heavily inspired from: http://natelandau.com/my-mac-osx-bash_profile/

DIR="$( dirname "${BASH_SOURCE[0]}" )";
source $DIR/base/.bash_profile;

DIR="$( dirname "${BASH_SOURCE[0]}" )";
source $DIR/tools/.bash_profile;

DIR="$( dirname "${BASH_SOURCE[0]}" )";
source $DIR/expedia/.bash_profile;
