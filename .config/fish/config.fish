################################################################################
################################### muh fish ###################################
################################################################################


. ~/.config/fish/aliases.fish
. ~/.config/fish/func.fish


# Remove fish default greeting
set -gx fish_greeting ''

function fish_prompt
  set last_status $status

  set_color -o magenta
  printf ' %s' (echo $PWD | sed -e "s|^$HOME|~|")
  set_color normal

  __fish_git_prompt " %s"

  if test $last_status -eq 0
    set_color green -o
  else
    set_color blue -o
    printf ' ['
    set_color red -o
    printf '%d' $last_status
    set_color blue -o
    printf ']'
    set_color red -o
  end
  echo

  printf '$ '

  set_color normal
end

set -g __fish_git_prompt_showdirtystate 'yes'
set -g __fish_git_prompt_showstashstate 'yes'
set -g __fish_git_prompt_showuntrackedfiles 'yes'
set -g __fish_git_prompt_show_informative_status 'yes'
set -g __fish_git_prompt_showupstream 'yes'

set -g __fish_git_prompt_color_branch green
set -g __fish_git_prompt_color_dirtystate yellow
set -g __fish_git_prompt_color_invalidstate -u red
set -g __fish_git_prompt_color_stagedstate -b green
set -g __fish_git_prompt_color_cleanstate green
set -g __fish_git_prompt_color_stashstate yellow
set -g __fish_git_prompt_color_upstream green
set -g __fish_git_prompt_color_untrackedfiles blue

set -g __fish_git_prompt_char_stateseparator ''
set -g __fish_git_prompt_char_cleanstate ''
set -g __fish_git_prompt_char_dirtystate ' !'
set -g __fish_git_prompt_char_invalidstate ' '
set -g __fish_git_prompt_char_stagedstate ' +'
set -g __fish_git_prompt_char_stashstate ' *'
set -g __fish_git_prompt_char_untrackedfiles ' ?'
set -g __fish_git_prompt_char_upstream_ahead ' ↑'
set -g __fish_git_prompt_char_upstream_behind ' ↓'
set -g __fish_git_prompt_char_upstream_diverged ' '
set -g __fish_git_prompt_char_upstream_equal '='
set -g __fish_git_prompt_char_upstream_prefix ' '


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


set FZF_COMPLETE 0


set -gx __fish_initialized 1


################################################################################
################################### end fuck ###################################
################################################################################
