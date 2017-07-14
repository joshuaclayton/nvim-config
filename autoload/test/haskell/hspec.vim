if !exists('g:test#haskell#hspec#file_pattern')
  let g:test#haskell#hspec#file_pattern = '\vSpec\.hs$'
endif

function! test#haskell#hspec#test_file(file) abort
  return a:file =~# g:test#haskell#hspec#file_pattern
endfunction

function! test#haskell#hspec#build_position(type, position) abort
  if a:type == 'nearest'
    return [a:position['file'].':'.a:position['line']]
  elseif a:type == 'file'
    return [a:position['file']]
  else
    return []
  endif
endfunction

function! test#haskell#hspec#build_args(args) abort
  return a:args
endfunction

function! test#haskell#hspec#executable() abort
  return 'stack test'
endfunction
