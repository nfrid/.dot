# There it is. There I source my plugins

source $ZDOTDIR/plugins/lesscolors/lesscolors.zsh

source $ZDOTDIR/plugins/title/title.zsh
source $ZDOTDIR/plugins/completion/completion.zsh
source $ZDOTDIR/plugins/clipboard/clipboard.zsh
source $ZDOTDIR/plugins/spectrum/spectrum.zsh

source $ZDOTDIR/plugins/z/z.sh
source $ZDOTDIR/plugins/vi-mode/vi-mode.zsh
source $ZDOTDIR/plugins/taskwarrior/taskwarrior.zsh
source $ZDOTDIR/plugins/alias-finder/alias-finder.zsh
source $ZDOTDIR/plugins/you-should-use/you-should-use.zsh

source $ZDOTDIR/plugins/fzf-autocomplete/fzf-autocomplete.zsh
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/plugins/git-flow-completion/git-flow-completion.zsh

source $ZDOTDIR/plugins/generic-gnu-completion/generic-gnu-completion.zsh
source $ZDOTDIR/plugins/pip-completion/pip-completion.zsh
eval "$(gh completion -s zsh)"
source $ZDOTDIR/plugins/better-npm-completion/better-npm-completion.zsh
source $ZDOTDIR/plugins/yarn-completion/yarn-completion.zsh


# source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZDOTDIR/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZDOTDIR/plugins/history-substring-search/history-substring-search.zsh

source $ZDOTDIR/plugins/dotbare/dotbare.plugin.zsh
_dotbare_completion_cmd
