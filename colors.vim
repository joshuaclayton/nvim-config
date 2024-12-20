set t_Co=256
colorscheme rigel
set termguicolors
set background=dark
call togglebg#map("<F6>")
match Error /\%80v.\+/

syntax on

highlight Comment cterm=italic gui=italic

hi link CocRustTypeHint Comment
hi link CocRustChainingHint Comment
hi link CocMenuSel CursorLine
hi link CocHintSign Comment
hi link LspInfoBorder Comment
hi link LspInfoList Comment
hi link LspInfoTip Comment
hi link LspInfoTitle Comment
hi link LspInfoFiletype Comment
