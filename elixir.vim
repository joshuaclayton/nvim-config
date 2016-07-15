Plugin 'elixir-lang/vim-elixir'

let g:syntastic_enable_elixir_checker = 1
let g:syntastic_elixir_checkers = "elixir"

if has("autocmd")
  autocmd BufNewFile,BufRead *.ex set filetype=elixir
  autocmd BufNewFile,BufRead *.exs set filetype=elixir
end
