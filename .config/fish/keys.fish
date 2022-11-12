bind -M insert \cn 'pager-toggle-search'
bind -M default \cn 'pager-toggle-search'
bind -M insert \cn 'complete-and-search'
bind -M default \cn 'complete-and-search'

bind -M insert \cj 'down-line'
bind -M insert \ck 'up-line'
bind -M default \cj 'down-line'
bind -M default \ck 'up-line'

bind -M insert \ca 'beginning-of-line'
bind -M insert \ce 'end-of-line'

bind -M insert \ef 'forward-word'
bind -M insert \eb 'backward-word'

bind -M insert \cf 'forward-single-char'
bind -M insert \cb 'backward-char'

bind -M insert \e. '__fish_list_current_token'
bind -M default \e. '__fish_list_current_token'
bind -M insert \em '__fish_man_page'
bind -M default \em '__fish_man_page'

bind -M default \e\  'xkb-switch -n'
