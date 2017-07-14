function! RestoreCursor()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

function! RestoreInsert()
  if line("'z") <= line("$")
    normal! g`Z
  endif
endfunction

if has("autocmd")
  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost * call RestoreCursor()

  autocmd BufWinEnter,WinEnter * setlocal cursorline
  autocmd BufWinLeave,WinLeave * setlocal nocursorline

  autocmd BufWinEnter,WinEnter * setlocal colorcolumn=80
  autocmd BufWinLeave,WinLeave * setlocal colorcolumn=0

  autocmd BufWinEnter,WinEnter * setlocal cursorcolumn
  autocmd BufWinLeave,WinLeave * setlocal nocursorcolumn

  autocmd BufWinLeave * call clearmatches()

  autocmd BufNewFile,BufRead *.md setlocal spell
  autocmd BufNewFile,BufRead *.elm set filetype=elm

  autocmd BufWritePre *.hs normal! mZ
  autocmd BufWritePre *.hs %!import-sort
  autocmd BufWritePost *.hs call RestoreInsert()
end
