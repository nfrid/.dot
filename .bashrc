# vi:ft=bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[ -z "$PS1" ] && return

HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
  xterm-color) color_prompt=yes;;
esac

force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then
  if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    color_prompt=yes
  else
    color_prompt=
  fi
fi

# Get repo info
if [ "$color_prompt" = yes ]; then
  PS1='\[\033[01;34m\]\w\[\033[00m\] $ '
else
  PS1='\w\ $ '
fi
unset color_prompt force_color_prompt

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

  if command -v exa &> /dev/null; then
    alias ls="exa --group-directories-first"
  else
    alias ls="ls -hN --color=auto --group-directories-first"
  fi

  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
  alias diff="diff --color=auto"
  alias ccat="highlight --out-format=ansi"
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias e="$EDITOR"
alias _e="sudo -e"
alias se="sudoedit"

alias ..="cd .."

# Git
alias lg="lazygit"
alias g="git"
alias gc="git commit"
alias ga="git add"
alias gaa="git add ."
alias gg="gaa && gc"
alias gA="git add -A"
alias GG="gA && gc"
alias gf="git fetch"
alias gp="git pull"
alias gP="git push"
alias gPu="git push -u origin HEAD"
alias gs="git status"
alias gsh="git show"
alias gch="git checkout"
alias gb="git branch"
alias gm="git merge"
alias gr="git reset"
alias gR="git reset --hard"
alias gl="git log"
alias gd="git diff"
alias gt="git tag"
alias gta="git tag -a"
alias gtd="git tag -d"
gnf() {
  git remote add origin git@github.com:NFrid/$1.git
}

# Paskage management
alias pm="sudo pacman"
alias pmi="sudo pacman -S"
alias pms="sudo pacman -Ss"
alias pmr="sudo pacman -Rs"
alias pmu="sudo pacman -Syu"
# alias p="paru"
# alias pi="paru -S"
# alias ps="paru -Ss"
# alias pr="paru -Rs"
alias p="yay"
alias pi="yay -S"
alias pr="yay -Rs"

# Node package management
alias n="npm"
alias nr="npm run"
alias ni="npm install --save"
alias nid="npm install --save-dev"
alias nu="npm uninstall"
alias nud="npm uninstall --save-dev"
alias nig="sudo npm install -g"
alias nug="sudo npm uninstall -g"
alias y="yarn"
alias ya="yarn add"
alias yr="yarn remove"
alias yg="yarn global"
alias yga="yarn global add"
alias ygr="yarn global remove"

# XClip
alias xcp="xclip -sel clip -t image/png -o >"

# Stuff
alias matrix="sudo docker run -ti geertjohan/gomatrix"

# Dotbare
alias d="dotbare"
alias da="dotbare add"
alias dfa="dotbare fadd"
alias dc="dotbare commit"
alias dP="dotbare push -u origin HEAD"
alias dfu="dotbare funtrack"
alias ds="dotbare status"
alias da="dotbare add -u"
alias dl="dotbare flog"
alias ld="lg --git-dir=$DOTBARE_DIR --work-tree=$HOME"
alias D="git --git-dir=$DOTBARE_DIR --work-tree=$HOME"
Dc() {
  [[ -z $1 ]] && dir=. || dir=$1
  D ls-files $dir | awk -F / '{print $1}' | uniq
}

# TaskWarrior
alias t="task"
alias et="nvim +TW"
alias ts="t sync"
alias tc="t calendar"
alias tt="taskwarrior-tui"

# Tmux
alias tt="tmux"
alias ta="tmux attach"
tn() {
  test $TMUX &&
    tmux new -s $1 -d ||
    tmux new -s $1
}

# SystemD <3
alias sys="sudo systemctl"
alias syst="sudo systemctl status"
alias usys="systemctl --user"
alias usyst="systemctl --user status"
alias jrn="sudo journalctl"
alias ujrn="journalctl --user"

# The Shit
alias o="xdg-open"
alias mkd="mkdir -pv"
# mkdir+cd together!!
mkcd() {
  mkdir -p -- $1 &&
    cd -- $1
}
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -vI"
alias ffmpeg="ffmpeg -hide_banner"

# suckless
alias pt='for p in patch/*.diff; patch -p1 -N < $p; end; echo -n ""'
alias mki="sudo make install && make clean"

# pass
alias pw="pass"
alias pwg="pass generate"
alias pws="pass git pull && pass git push"

# The cd
alias hz="cd ~/github/herzen"
alias ww="cd ~/Documents/Writing"
alias sc="cd ~/.local/bin/scripts"
alias ss="cd ~/.local/src"
alias bl="cd ~/github/nfrid.me/src/posts"

# Misc
alias b="bash"
alias py="python"
alias bpy="bpython"
alias q="tuxi"
alias f="fuck"
alias nb="newsboat"
alias m="neomutt"
alias nc="ncmpcpp"
alias ytdl="youtube-dl --all-subs --sub-lang en,ru --embed-subs --add-metadata -f 'bestvideo[width<=1920][height<=1080]+bestaudio[ext=m4a]/bestvideo+bestaudio'"
alias ytdl3="youtube-dl --embed-thumbnail -x --audio-format mp3 -f 'bestaudio'"
alias r="ranger"
alias tl="tllocalmgr"
alias snc="rsync -vrzhu --delete"
alias a="$TERM & disown"
alias btm="btm -g --mem_as_value --battery"
alias where="type -a"
tsh() {
  if [[ -z $1 ]]; then
    echo '#!/bin/sh' > $1 &&
    chmod +x $1
  fi
}


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
# if ! shopt -oq posix; then
#   if [ -f /usr/share/bash-completion/bash_completion ]; then
#     . /usr/share/bash-completion/bash_completion
#   elif [ -f /etc/bash_completion ]; then
#     . /etc/bash_completion
#   fi
# fi

bind 'set colored-stats on'
bind 'set show-all-if-ambiguous on'
bind 'set completion-ignore-case on'
bind 'TAB:menu-complete'
