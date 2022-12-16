. ~/.config/fish/aliases.fish
. ~/.config/fish/keys.fish

set -g fish_greeting

# starship init fish | source

function fish_prompt
  set last_status $status

  printf ' %s' (pwd_prompt) (git_prompt)

  set_color normal

  if test $CMD_DURATION -gt 3000
    set -l seconds (math --scale=0 "$CMD_DURATION/1000" % 60)
    set -l minutes (math --scale=0 "$CMD_DURATION/60000" % 60)
    set -l hours (math --scale=0 "$CMD_DURATION/3600000")

    set_color brblack -o

    printf ' '

    if test $hours -gt 0
      printf '%s' $hours'h ' $minutes'm ' $seconds's'
    else if test $minutes -gt 0
      printf '%s' $minutes'm ' $seconds's'
      else if test $seconds -gt 0
      printf '%s' $seconds's'
    end

    set_color normal
  end

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


function pwd_prompt
    set -l splitPwd (string replace -- $HOME '~' $PWD | string split --no-empty '/')
    set -l splitPwdForLength $splitPwd
    set -l splitPwdForOutput $splitPwd

    set -la anchorDirs 1
    set -la anchorDirs (count $splitPwd)

    set -l colorDirs (set_color normal && set_color blue)
    set -l colorAnchors (set_color -o magenta)
    set -l colorTruncatedDirs (set_color normal && set_color cyan)

    set -l pwdMaxLength (math $COLUMNS -10)

    set -l markers .bzr .citc .git .hg .node-version .python-version \
      .ruby-version .shorten_folder_marker .svn .terraform Cargo.toml \
      composer.json CVS go.mod package.json

    set -l i 1
    for unusedVariable in $splitPwd
        set -l parentDir (string join -- '/' $splitPwd[1..$i] | string replace '~' $HOME)

        if test -z false (string split -m 2 " " -- "-o -e "$parentDir/$markers) || contains $i $anchorDirs
            set splitPwdForOutput[$i] $colorAnchors$splitPwd[$i]$colorDirs
        else if test (string join -- '/' $splitPwdForLength | string length) -gt $pwdMaxLength
            while set -l truncationLength (math $truncationLength + 1) &&
                test $truncationLength -lt (string length -- $splitPwdForLength[$i]) &&
                set -l truncated (string sub --length $truncationLength -- $splitPwd[$i]) &&
                test (count $parentDir/$truncated*/) -gt 1
            end

            set splitPwdForLength[$i] $truncated
            set splitPwdForOutput[$i] $colorTruncatedDirs$truncated$colorDirs
        end

        set i (math $i + 1)
    end

    if not test -w $PWD
        printf '%s' $colorDirs '!'
    end
    printf '%s' $colorDirs
    test "$splitPwd[1]" = '~' || printf '%s' '/'

    string join -- '/' $splitPwdForOutput
end

function git_prompt
    set -l branch (git branch --show-current 2>/dev/null) || return
    git rev-parse --quiet \
        --is-inside-work-tree \
        --git-dir \
        --short=8 HEAD | read --local --line isInsideWorkTree gitDir sha

    set -l location
    if test "$isInsideWorkTree" = false
        set location GIT_DIR!
    else if test -n "$branch"
        set location $branch
    else
        set location $sha…
    end

    set -l operation
    set -l step
    set -l totalSteps

    if test -d $gitDir/rebase-merge
        set step (cat $gitDir/rebase-merge/msgnum 2>/dev/null)
        set totalSteps (cat $gitDir/rebase-merge/end 2>/dev/null)
        if test -f $gitDir/rebase-merge/interactive
            set operation rebase-i
        else
            set operation rebase-m
        end
    else if test -d $gitDir/rebase-apply
        set step (cat $gitDir/rebase-apply/next 2>/dev/null)
        set totalSteps (cat $gitDir/rebase-apply/last 2>/dev/null)
        if test -f $gitDir/rebase-apply/rebasing
            set operation rebase
        else if test -f $gitDir/rebase-apply/applying
            set operation am
        else
            set operation am/rebase
        end
    else if test -f $gitDir/MERGE_HEAD
        set operation merge
    else if test -f $gitDir/CHERRY_PICK_HEAD
        set operation cherry-pick
    else if test -f $gitDir/REVERT_HEAD
        set operation revert
    else if test -f $gitDir/BISECT_LOG
        set operation bisect
    end

    git rev-list --count --left-right @{upstream}...HEAD 2>/dev/null |
    read --local --delimiter=\t upstreamBehind upstreamAhead
    test "$upstreamBehind" = 0 && set -e upstreamBehind
    test "$upstreamAhead" = 0 && set -e upstreamAhead

    set -l staged
    set -l dirty
    set -l untracked
    set -l conflicted
    set -l stash

    if test "$isInsideWorkTree" = true
        set -l gitInfo (git status --porcelain)
        set staged (string match --regex '^[ADMR] ' $gitInfo | count) || set -e staged
        set dirty (string match --regex '^ [ADMR]' $gitInfo | count) || set -e dirty
        set untracked (string match --regex '^\?\?' $gitInfo | count) || set -e untracked
        set conflicted (string match --regex '^UU' $gitInfo | count) || set -e conflicted
        set stash (git stash list | count) || set -e stash
    end

    printf '%s' \
        (set_color green) $location \
        (set_color white) ' '$operation ' '$step/$totalSteps \
        (set_color green) ' ⇣'$upstreamBehind ' ⇡'$upstreamAhead \
        (set_color red) ' ~'$conflicted \
        (set_color magenta) ' +'$staged \
        (set_color yellow) ' !'$dirty \
        (set_color blue) ' ?'$untracked \
        (set_color green) ' *'$stash
end


# fish_vi_key_bindings
# function fish_mode_prompt
#   fish_vi_cursor e # idk why but in tmux it doesn't make it insert otherwise 
#                    # after executing any command
#   switch $fish_bind_mode
#     case default
#     echo -en "\e[1 q"
#     case insert
#     echo -en "\e[5 q"
#     case replace_one
#     echo -en "\e[3 q"
#     case visual
#     echo -en "\e[1 q"
#     case '*'
#     echo -en "\e[1 q"
#   end
# end


thefuck --alias | source
# pyenv init - | source
# pdm completion | source

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/fish/__tabtab.fish ]; and . ~/.config/tabtab/fish/__tabtab.fish; or true


export NPM_TOKEN=(pw tokens/npm/github)


# neovim remote for lazygit.nvim
if test -n "$NVIM_LISTEN_ADDRESS"
  export EDITOR="nvr -cc split --remote-wait +'set bufhidden=wipe'"
end


set -gx __fish_initialized 1
