function fish_user_key_bindings
  bind -M insert \cn 'pager-toggle-search'
  bind -M normal \cn 'pager-toggle-search'
  bind -M insert \cn 'complete-and-search'
  bind -M normal \cn 'complete-and-search'
  bind -M insert \cj 'down-line'
  bind -M insert \ck 'up-line'
  bind -M normal \cj 'down-line'
  bind -M normal \ck 'up-line'
end
