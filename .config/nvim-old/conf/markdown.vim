" vim-markdown


"md preview

let g:markdown_enable_mappings = 1
let g:markdown_enable_input_abbreviations = 1
let g:markdown_enable_insert_mode_mappings = 1
let g:mkdp_auto_close = 0

let g:mkdp_highlight_css = expand('~/.config/nvim/themes/markdown_preview.css')

nmap <leader>rm :MarkdownPreview<CR>
nmap <leader>rM :MarkdownPreviewStop<CR>


