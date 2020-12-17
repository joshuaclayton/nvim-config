set incsearch
set ignorecase
set smartcase

set hlsearch
" Toggle search highlighting
map <Leader>h :set invhls <CR>

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

let g:fzf_preview_window = ['right:50%', 'ctrl-/']
