#!/bin/bash

# The cd
alias \
  hz="cd ~/github/herzen" \
  ww="cd ~/Documents/Writing" \
  sc="cd ~/.local/bin/scripts" \
  /

# Misc
alias \
  _="sudo" \
  py="python" \
  bpy="bpython" \
  psys="bpytop" \
  f="fuck" \
  nb="newsboat" \
  m="neomutt" \
  nc="ncmpcpp" \
  ytdl="youtube-dl -f 'bestvideo[width<=1920][height<=1080]+bestaudio[ext=m4a]/bestvideo+bestaudio'" \
  ytdl3="youtube-dl -x --audio-format mp3 -f 'bestaudio'" \
  r="ranger" \
  tl="tllocalmgr" \
  snc="rsync -vrzhu --delete" \
  /
  # tlmgr="/usr/share/texmf-dist/scripts/texlive/tlmgr.pl --usermode" \

# The Shit
alias \
  o="xdg-open" \
  mkd="mkdir -pv" \
  cp="cp -iv" \
  mv="mv -iv" \
  rm="rm -vI" \
  ffmpeg="ffmpeg -hide_banner" \
  /

# Colorz!!
alias \
  grep="grep --color=auto" \
  diff="diff --color=auto" \
  ccat="highlight --out-format=ansi" \
  /

# SystemD <3
alias \
  sys="sudo systemctl" \
  syst="sudo systemctl status" \
  usys="systemctl --user" \
  usyst="systemctl --user status" \
  jrn="sudo journalctl" \
  ujrn="journalctl --user" \
/

# Editor
alias \
  e="$EDITOR" \
  _e="sudo -e" \
  se="sudoedit" \
  /

# cd-less
alias \
  ..="cd .." \
  ~="cd ~" \
  -="cd -" \
  /

# TaskWarrior
alias \
  t="task" \
  et="nvim +TW" \
  ts="t sync" \
  tc="t calendar" \
  /
  tt() { t $1; tc }
  tp() { t proj:$1 }
  te() { t $1 mod due:due+23h+59min }

# Tmux
alias \
  tn="tmux -u -f $TMUX_CONFIG new" \
  ta="tmux -u -f $TMUX_CONFIG attach" \
  /

# Git
alias \
  lg="lazygit" \
  g="git" \
  gc="git commit" \
  ga="git add" \
  gaa="git add ." \
  gg="gaa && gc" \
  gA="git add -A" \
  GG="gA && gc" \
  gp="git pull" \
  gP="git push" \
  gPu="git push -u origin HEAD" \
  gs="git status" \
  gch="git checkout" \
  gb="git branch" \
  gm="git merge" \
  gr="git reset" \
  gR="git reset --hard" \
  gl="git log" \
  gd="git diff" \
  /
  gnf() { git remote add origin git@github.com:NFrid/$1 $2 }

# Dotbare
alias \
  d="dotbare" \
  da="dotbare add" \
  dfa="dotbare fadd" \
  dc="dotbare commit" \
  dP="dotbare push -u origin HEAD" \
  dfu="dotbare funtrack" \
  ds="dotbare status" \
  da="dotbare add -u" \
  dl="dotbare flog" \
  /

# ls override
alias \
  ls="exa --group-directories-first" \
  ll="ls -lah" \
  /
  # ls="ls -hN --color=auto --group-directories-first" \
  # l="ls -a" \
  # ll="ls -lAh" \

# Paskage management
alias \
  pm="sudo pacman" \
  pmi="sudo pacman -S" \
  pms="sudo pacman -Ss" \
  pmr="sudo pacman -Rs" \
  pmu="sudo pacman -Syu" \
  p="paru" \
  pi="paru -S" \
  ps="paru -Ss" \
  pr="paru -Rs" \
  /
  # y="yay" \
  # yu="yay -Suy" \
  # yi="yay -S" \
  # ys="yay -Ss" \
  # yr="yay -Rs" \

# Node package management
alias \
  n="npm" \
  nr="npm run" \
  ni="npm install --save" \
  nid="npm install --save-dev" \
  nu="npm uninstall" \
  nud="npm uninstall --save-dev" \
  nig="sudo npm install -g" \
  nug="sudo npm uninstall -g" \
  y="yarn" \
  ya="yarn add" \
  yr="yarn remove" \
  yg="yarn global" \
  yga="yarn global add" \
  ygr="yarn global remove" \
  /

# XClip
alias \
  xcp="xclip -sel clip -t image/png -o >" \
  /

# Zsh conf
alias \
  zc="$EDITOR $ZDOTDIR/.zshrc" \
  zcs="source $ZDOTDIR/.zshrc" \
  /

# Stuff
alias \
  matrix="_ docker run -ti geertjohan/gomatrix" \
/
