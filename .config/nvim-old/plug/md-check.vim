function Check()
    let l:line=getline('.')
    let l:curs=winsaveview()
    if l:line=~?'^\s*-\ [^\[]'
        s/\-/\-\ \[x]/
    elseif l:line=~?'^\s*-\ \[\ \].*'
        s/\[\s*\]/[x]/
    elseif l:line=~?'^\s*-\ \[x\].*'
        s/\[x\]/[ ]/
    endif
    call winrestview(l:curs)
endfunction

function CheckBox()
    let l:line=getline('.')
    let l:curs=winsaveview()
    if l:line=~?'^\s*-\ [^\[]'
        s/\-/\-\ \[ ]/
    elseif l:line=~?'^\s*-\ \[.\].*'
        s/\ \[.\]//
    endif
    call winrestview(l:curs)
endfunction

autocmd FileType markdown nnoremap <silent> <A-d> :call Check()<CR>
autocmd FileType markdown nnoremap <silent> <A-D> :call CheckBox()<CR>
