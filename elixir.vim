Plugin 'elixir-lang/vim-elixir'

if has("autocmd")
  autocmd BufNewFile,BufRead *.ex set filetype=elixir
  autocmd BufNewFile,BufRead *.exs set filetype=elixir
end
