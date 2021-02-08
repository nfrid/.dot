" Replace all class by className cuz jsx
:command! -range=% JSXFixClassName 
      \ <line1>,<line2>s/ class=/ className=/g
      \ | noh
      \ | norm!``

" Toggle Conceal Level
:command! ToggleConceal
      \ if &conceallevel ==# 2
      \ |   setlocal conceallevel=0
      \ | else
      \ |   setlocal conceallevel=2
      \ | endif

function! ToggleWrap() abort
      if &wrap ==# 'nowrap'
        setlocal wrap linebreak
        nnoremap <buffer> j gj
        nnoremap <buffer> k gk
      else
        setlocal nowrap
        unmap <buffer> j
        unmap <buffer> k
      endif
endfunction

" Toggle Wrapping
:command! ToggleWrap call ToggleWrap()

" Toggle Keymap
:command! ToggleKeymap
      \ if &iminsert ==# ''
      \ |   setlocal iminsert=1
      \ | else
      \ |   setlocal iminsert=0
      \ | endif
