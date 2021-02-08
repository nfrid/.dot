let g:XkbSwitchEnabled = 1

let g:XkbSwitchLib = '/usr/lib/libxkbswitch.so'
let g:XkbSwitchIMappings = ['ru']

let g:XkbSwitchAssistNKeymap = 1    " for commands r and f
let g:XkbSwitchAssistSKeymap = 1    " for search lines

let g:XkbSwitchKeymapNames = {'ru' : 'russian-jcukenwin'}
let g:XkbSwitchDynamicKeymap = 1

" Anti bullshit
if $DISPLAY == "" 
	let g:XkbSwitchEnabled = 0
endif 
