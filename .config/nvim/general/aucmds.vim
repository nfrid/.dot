" Automatically deletes all trailing whitespace and newlines at end of file on save.
" autocmd BufWritePre * %s/\s\+$//e
" autocmd BufWritepre * %s/\n\+\%$//e
" augroup highlight_current_word
"   au!
"   au CursorHold * :exec 'match StatusLineNC /\V\<' . expand('<cword>') . '\>/'
" augroup END
