set t_Co=256
colorscheme rigel
set termguicolors
set background=dark
call togglebg#map("<F6>")
match Error /\%80v.\+/

syntax on

hi link CocRustTypeHint Comment
hi link CocRustChainingHint Comment
highlight Comment cterm=italic gui=italic
