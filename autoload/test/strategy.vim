function! test#strategy#neovimvert(cmd) abort
  vert botright new
  call termopen(a:cmd)
  au BufDelete <buffer> wincmd p " switch back to last window
  startinsert
endfunction
