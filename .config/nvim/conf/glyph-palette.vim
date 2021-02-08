augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern,coc-explorer call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END
