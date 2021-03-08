# The cd
alias hz="cd ~/github/herzen"
alias ww="cd ~/Documents/Writing"
alias sc="cd ~/.local/bin/scripts"
alias ss="cd ~/.local/src"

# Misc
abbr -ag _ sudo
alias py="python"
alias bpy="bpython"
alias f="fuck"
alias nb="newsboat"
alias m="neomutt"
alias nc="ncmpcpp"
alias ytdl="youtube-dl -f 'bestvideo[width<=1920][height<=1080]+bestaudio[ext=m4a]/bestvideo+bestaudio'"
alias ytdl3="youtube-dl -x --audio-format mp3 -f 'bestaudio'"
alias r="ranger"
alias tl="tllocalmgr"
alias snc="rsync -vrzhu --delete"
# alias tlmgr="/usr/share/texmf-dist/scripts/texlive/tlmgr.pl --usermode"

# suckless
alias pt="patch -p1 -N < patch/*"
alias mki="sudo make install && make clean"

# pass
alias pw="pass"
alias pwg="pass generate"
alias pws="pass git pull && pass git push"

# The Shit
alias o="xdg-open"
alias mkd="mkdir -pv"
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -vI"
alias ffmpeg="ffmpeg -hide_banner"

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
alias e="$EDITOR"
alias _e="sudo -e"
alias se="sudoedit"

# cd-less
# alias ..="cd .."
# alias ~="cd ~"
# alias -="cd -"

# TaskWarrior
alias t="task"
alias et="nvim +TW"
alias ts="t sync"
alias tc="t calendar"

# Tmux
alias tn="tmux -u -f $TMUX_CONFIG new"
alias ta="tmux -u -f $TMUX_CONFIG attach"

# Git
alias lg="lazygit"
alias g="git"
alias gc="git commit"
alias ga="git add"
alias gaa="git add ."
alias gg="gaa && gc"
alias gA="git add -A"
alias GG="gA && gc"
alias gp="git pull"
alias gP="git push"
alias gPu="git push -u origin HEAD"
alias gs="git status"
alias gch="git checkout"
alias gb="git branch"
alias gm="git merge"
alias gr="git reset"
alias gR="git reset --hard"
alias gl="git log"
alias gd="git diff"
function gnf 
  git remote add origin git@github.com:NFrid/$argv.git
end

# Dotbare
alias dotbare="~/.local/share/dotbare/dotbare"
alias d="dotbare"
alias da="dotbare add"
alias dfa="dotbare fadd"
alias dc="dotbare commit"
alias dP="dotbare push -u origin HEAD"
alias dfu="dotbare funtrack"
alias ds="dotbare status"
alias da="dotbare add -u"
alias dl="dotbare flog"

# ls override
alias ls="exa --group-directories-first"
alias ll="ls -lah"
# alias ls="ls -hN --color=auto --group-directories-first"
# alias l="ls -a"
# alias ll="ls -lAh"

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
# alias y="yay"
# alias yu="yay -Suy"
# alias yi="yay -S"
# alias ys="yay -Ss"
# alias yr="yay -Rs"

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
alias matrix="_ docker run -ti geertjohan/gomatrix"