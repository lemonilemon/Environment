# prevention
alias cp="cp -i"
alias rm="rm -i"
alias mv="mv -i"
alias ln="ln -i"
# preserve-root
alias chown="chown --preserve-root"
alias chmod="chmod --preserve-root"
alias chgrp="chgrp --preserve-root"
# system
alias df="df -Tha --total"
alias du="du -ach | sort -h"
alias free="free -mt"
alias ps="ps auxf"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias mkdir="mkdir -pv"

# color!!
alias diff="colordiff"
# compiler
# cpp
alias g++="g++ -std=c++2a -O2"

