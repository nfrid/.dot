#!/bin/bash

# mkdir+cd together!!
mkcd() {
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}
#
# Reload program
rs() {
  killall "${2:-$1}" && $1 &>/dev/null & disown || echo "\nNothing to reload!"
}

# n() {
#   [[ -f "./note.md" ]] && $EDITOR ./note.md || $EDITOR $HOME/note.md
# }

td() {
  [[ -z "$2" ]] && t $1 mod due:due-1min || t $1 mod "${@:2}" due:due-1min
}
