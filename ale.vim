Plugin 'w0rp/ale'

source $HOME/.config/nvim/ale/fixers/elm_format.vim

let g:airline#extensions#ale#enabled = 1

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fixers['elm'] = ['elm_format']
let g:ale_fix_on_save = 1
