source $HOME/.config/nvim/ale/fixers/elm_format.vim
" source $HOME/.config/nvim/ale/fixers/exfmt.vim

let g:airline#extensions#ale#enabled = 1

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fixers['typescript'] = ['prettier']
let g:ale_fixers['elm'] = ['elm_format']
let g:ale_fixers['ruby'] = ['standardrb']
let g:ale_fix_on_save = 1

call ale#linter#Define('eruby', {
  \   'name': 'erubylint',
  \   'executable': 'erb',
  \   'output_stream': 'stderr',
  \   'command': "ruby -rerb -e \"puts ERB.new(File.read(%t, encoding: 'BINARY').gsub('<%=','<%'), nil, '-').src\" | ruby -c",
  \   'callback': 'ale#handlers#ruby#HandleSyntaxErrors',
  \})

if !exists('g:ale_linters')
  let g:ale_linters = {}
endif

let g:ale_linters['eruby'] = ['erubylint']
