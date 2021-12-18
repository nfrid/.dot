# The cd
alias hz="cd ~/github/herzen"
alias ww="cd ~/Documents/Writing"
alias sc="cd ~/.local/bin/scripts"
alias ss="cd ~/.local/src"
alias bl="cd ~/github/nfrid.me/src/posts"

alias yt="yt-dlp"
alias youtube-dl="yt"
alias ytv="yt --all-subs --sub-lang en,ru --embed-subs --add-metadata -f 'bestvideo[width<=1920][height<=1080]+bestaudio[ext=m4a]/bestvideo+bestaudio'"
alias yta="yt -x --audio-format mp3 -f 'bestaudio'"
alias yti="yt --write-thumbnail --skip-download"

# Misc
# alias b="bash"
alias b="replay"
alias py="python"
alias bpy="bpython"
alias q="tuxi"
alias f="fuck"
alias nb="newsboat"
alias m="neomutt"
alias nc="ncmpcpp"
alias r="ranger"
alias lf="lfrun"
# alias r="lf"
alias tl="tllocalmgr"
alias snc="rsync -vrzhu --delete"
alias a="$TERM & disown"
alias btm="btm -g --mem_as_value --battery"
alias w="command -v"
function tsh
    test -e $argv ||
        echo '#!/bin/sh' >$argv &&
        chmod +x $argv
end
alias tlmgr="/usr/share/texmf-dist/scripts/texlive/tlmgr.pl --usermode"

# suckless
alias pt='for p in patch/*.diff; patch -p1 -N < $p; end; echo -n ""'
alias mki="sudo make install && make clean"

# pass
alias pw="pass"
alias pwg="pass generate"
alias pws="pass git pull && pass git push"

# The Shit
alias o="xdg-open"
alias mkd="mkdir -pv"
# mkdir+cd together!!
function mkcd
    mkdir -p -- $argv &&
        cd -- $argv
end
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -vI"
alias ffmpeg="ffmpeg -hide_banner"

# ffmpeg
function ffcompress
    switch $argv[1]
        case mp4
            ffmpeg -i $argv[2] -c:v hevc_qsv -c:a copy -movflags +faststart $argv[3] comp.$argv[2]
            echo "compressed successfully"
        case '*'
            echo "i don't know how to compress this format yet! :("
    end
end

# Colorz!!
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias ccat="highlight --out-format=ansi"

# SystemD <3
alias sys="sudo systemctl"
alias syst="sudo systemctl status"
alias usys="systemctl --user"
alias usyst="systemctl --user status"
alias jrn="sudo journalctl"
alias ujrn="journalctl --user"

# Editor
if set -q EDITOR
    alias e="$EDITOR"
end
alias _e="sudo -e"
# alias se="sudoedit"

# cd-less
# alias ..="cd .."
# alias ~="cd ~"
# alias -="cd -"

# TaskWarrior
alias t="task"
alias et="nvim +TW"
alias ts="t sync"
alias tc="t calendar"
alias tt="taskwarrior-tui"

# Tmux
alias tt="tmux"
alias ta="tmux attach"
function tn
    test $TMUX &&
        tmux new -s $argv -d ||
        tmux new -s $argv
end

alias aa="abduco"

# Git
alias G="gitui"
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
function gnf
    git remote add origin git@github.com:NFrid/$argv.git
end

# Docker
alias d="docker"
alias dr="docker run"
alias dri="docker run --rm -it"
alias dc="docker-compose"
alias dcu="docker-compose up"

# Dotbare
# alias d="dotbare"
# alias da="dotbare add"
# alias dfa="dotbare fadd"
# alias dc="dotbare commit"
# alias dP="dotbare push -u origin HEAD"
# alias dfu="dotbare funtrack"
# alias ds="dotbare status"
# alias da="dotbare add -u"
# alias dl="dotbare flog"
# alias ld="lg --git-dir=$DOTBARE_DIR --work-tree=$HOME"
alias D="git --git-dir=$DOTBARE_DIR --work-tree=$HOME"
function Dc
    set -q argv || set argv .
    D ls-files $argv | awk -F / '{print $1}' | uniq
end

# ls override
alias ls="exa --group-directories-first"
alias ll="ls -lah"
# alias ls="ls -hN --color=auto --group-directories-first"
# alias l="ls -a"
# alias ll="ls -lAh"
alias sl="ls"

# Paskage management
alias pm="sudo pacman"
alias pmi="sudo pacman -S"
alias pms="sudo pacman -Ss"
alias pmr="sudo pacman -Rs"
alias pmu="sudo pacman -Syu"
alias p="paru"
alias pi="paru -S"
alias ps="paru -Ss"
alias pr="paru -Rs"
# alias p="yay"
# alias pi="yay -S"
# alias pr="yay -Rs"

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

# fish conf
alias fc="$EDITOR $HOME/.config/fish/config.fish"
alias fcs="source $HOME/.config/fish/config.fish"

# Stuff
alias matrix="sudo docker run -ti geertjohan/gomatrix"
