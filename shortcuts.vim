" Duplicate a selection
" Visual mode: D
vmap D y'>p

" Disable shift+k
map K <Nop>

nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:retab<CR>
nnoremap <silent> <F7> :let _s=@/<Bar>:%s/“/"/e<Bar>:%s/”/"/e<Bar>:%s/‘/'/e<Bar>:%s/’/'/e<Bar>:let @/=_s<Bar>:nohl<CR>
map <silent> <C-h> ^cw
nnoremap <silent> <F4> :GundoToggle<CR>
nnoremap <silent> <C-6> :b#<CR>
nnoremap <silent> <Leader>s :Ag<CR>
nnoremap <silent> <Leader>F :Files<CR>
nnoremap <silent> <C-P> :Files<CR>
nnoremap <silent> <C-D> :qa<CR>

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
for prefix in ['n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor

map <Leader>E :e <C-R>=expand("%:p:h") . "/" <CR>
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>
map -a	:call SyntaxAttr()<CR>
