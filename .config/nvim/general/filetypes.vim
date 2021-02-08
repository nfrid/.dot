" .env -> config
au BufRead,BufNewFile .env,.env.* set filetype=config

" *.conf,config -> dosini
" au BufRead,BufNewFile *.conf,config set filetype=dosini

au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
