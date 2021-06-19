. ~/.config/fish/aliases.fish
. ~/.config/fish/keys.fish

set -g fish_greeting

# starship init fish | source

set -g tide_git_branch_color green
set -g tide_git_operation_color white
set -g tide_git_upstream_color green
set -g tide_git_conflicted_color red
set -g tide_git_staged_color magenta
set -g tide_git_dirty_color yellow
set -g tide_git_untracked_color blue
set -g tide_git_stash_color green

set -g tide_pwd_color_dirs blue
set -g tide_pwd_color_anchors -o magenta
set -g tide_pwd_color_truncated_dirs cyan

set -g tide_cmd_duration_color brblack

function fish_prompt
  set last_status $status

  printf ' %s' (_tide_item_pwd) (_tide_item_git) (_tide_item_cmd_duration)
  set_color normal

  if test $last_status -eq 0
    set_color green -o
  else
    set_color white -o
    printf ' <'
    set_color red -o
    printf '%d' $last_status
    set_color white -o
    printf '>'
    set_color red -o
  end
  echo

  printf '$ '

  set_color normal
end


fish_vi_key_bindings
function fish_mode_prompt
  switch $fish_bind_mode
    case default
    echo -en "\e[1 q"
    case insert
    echo -en "\e[5 q"
    case replace_one
    echo -en "\e[3 q"
    case visual
    echo -en "\e[1 q"
    case '*'
    echo -en "\e[1 q"
  end
end


# thefuck --alias | source
# pyenv init - | source
# pdm completion | source


set -gx __fish_initialized 1
