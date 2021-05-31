################################################################################
################################### muh fish ###################################
################################################################################


. ~/.config/fish/aliases.fish
. ~/.config/fish/func.fish
. ~/.config/fish/keys.fish
fish_user_key_bindings


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

# Remove fish default greeting
set -gx fish_greeting ''

function fish_prompt
  set last_status $status

  # echo
  # set_color -o magenta
  # printf ' %s' (echo $PWD | sed -e "s|^$HOME|~|")
  # get_pwd
  printf ' %s' (_tide_item_pwd) (_tide_item_git) (_tide_item_cmd_duration)
  set_color normal

  # __fish_git_prompt " %s"

  # if test $CMD_DURATION -ne 0
  #   set_color brblack
  #   printf ' %ds' (math -s0 $CMD_DURATION / 1000)
  #   set CMD_DURATION 0
  # end

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

# set -g __fish_git_prompt_showdirtystate 'yes'
# set -g __fish_git_prompt_showstashstate 'yes'
# set -g __fish_git_prompt_showuntrackedfiles 'yes'
# set -g __fish_git_prompt_show_informative_status 'yes'
# set -g __fish_git_prompt_showupstream 'yes'

# set -g __fish_git_prompt_color_branch green
# set -g __fish_git_prompt_color_dirtystate yellow
# set -g __fish_git_prompt_color_invalidstate -u red
# set -g __fish_git_prompt_color_stagedstate yellow
# set -g __fish_git_prompt_color_cleanstate green
# set -g __fish_git_prompt_color_stashstate yellow
# set -g __fish_git_prompt_color_upstream green
# set -g __fish_git_prompt_color_untrackedfiles blue

# set -g __fish_git_prompt_char_stateseparator ''
# set -g __fish_git_prompt_char_cleanstate ''
# set -g __fish_git_prompt_char_dirtystate ' !'
# set -g __fish_git_prompt_char_invalidstate ' '
# set -g __fish_git_prompt_char_stagedstate ' +'
# set -g __fish_git_prompt_char_stashstate ' *'
# set -g __fish_git_prompt_char_untrackedfiles ' ?'
# set -g __fish_git_prompt_char_upstream_ahead ' ↑'
# set -g __fish_git_prompt_char_upstream_behind ' ↓'
# set -g __fish_git_prompt_char_upstream_diverged ' '
# set -g __fish_git_prompt_char_upstream_equal '='
# set -g __fish_git_prompt_char_upstream_prefix ''
# set -g __fish_git_prompt_char_upstream_prefix ' '


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


# function get_pwd
#   set -l splitPwd (string replace -- $HOME '~' $PWD | string split --no-empty '/')
#   set -l splitPwdForLength $splitPwd
#   set -l splitPwdForOutput $splitPwd

#   set -la anchorDirs 1
#   set -l cnt (count $splitPwd)
#   set -l cnt2 (math $cnt / 2)
#   set -la anchorDirs (math "round($cnt2)")
#   set -la anchorDirs $cnt

#   set -l colorDirs (set_color blue)
#   set -l colorAnchors (set_color -o magenta)
#   set -l colorTruncatedDirs (set_color cyan)

#   set -l pwdMaxLength (math $COLUMNS -20)

#   set pwd_markers .bzr .citc .git .hg .node-version .python-version .ruby-version .shorten_folder_marker .svn .terraform Cargo.toml composer.json CVS go.mod package.json

#   set -l i 0
#   for unusedVariable in $splitPwd
#     set -l parentDir (string join -- '/' $splitPwd[1..$i] | string replace '~' $HOME) # Use i from before increment

#     set i (math $i + 1) # This keeps us from using seq

#     # Returns true if any markers exist in splitPwd[$i], or if anchorDirs contains i
#     if test -z false (string split -m 2 " " -- "-o -e "$parentDir/$pwd_markers) || contains $i $anchorDirs
#       set splitPwdForOutput[$i] $colorAnchors$splitPwd[$i]$colorDirs
#     else if test (string join -- '/' $splitPwdForLength | string length) -gt $pwdMaxLength
#       while set -l truncationLength (math $truncationLength + 1) &&
#         test $truncationLength -lt (string length -- $splitPwdForLength[$i]) &&
#         set -l truncated (string sub --length $truncationLength -- $splitPwd[$i]) &&
#         test (count $parentDir/$truncated*/) -gt 1
#       end

#       set splitPwdForLength[$i] $truncated
#       set splitPwdForOutput[$i] $colorTruncatedDirs$truncated$colorDirs
#     end
#   end

#   if test "$splitPwd[1]" = '~'
#     printf '%s/' $splitPwdForOutput
#   else if test "$splitPwd[1]" = ''
#     printf '/'
#   else
#     printf '/'
#     printf '%s/' $splitPwdForOutput
#   end
# end

thefuck --alias | source
pyenv init - | source


set -gx __fish_initialized 1


################################################################################
################################### end fuck ###################################
################################################################################
