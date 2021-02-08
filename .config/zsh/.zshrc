################################################################################
#################################### fuck ######################################
################################################################################

autoload -U compinit
compinit
setopt autocd

HISTSIZE=10000
SAVEHIST=10000
[ -z ${XDG_CACHE_HOME} ] &&
    HISTFILE=$HOME/.cache/zsh/.zsh_history ||
    HISTFILE=$XDG_CACHE_HOME/zsh/.zsh_history

export FZF_DEFAULT_COMMAND="find -L"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval $(thefuck --alias)

[ -f $ZDOTDIR/cfg/plugins.zsh ] && source $ZDOTDIR/cfg/plugins.zsh

[ -f $ZDOTDIR/cfg/theme.zsh ] && source $ZDOTDIR/cfg/theme.zsh

[ -f $ZDOTDIR/cfg/aliases.zsh ] && source $ZDOTDIR/cfg/aliases.zsh
[ -f $ZDOTDIR/cfg/functions.zsh ] && source $ZDOTDIR/cfg/functions.zsh
[ -f $ZDOTDIR/cfg/keybindings.zsh ] && source $ZDOTDIR/cfg/keybindings.zsh

################################################################################
################################### FINALE #####################################
################################################################################
