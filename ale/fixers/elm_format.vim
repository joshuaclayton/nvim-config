call ale#Set('elm_elm_format_executable', 'elm-format')
call ale#Set('elm_elm_format_use_global', 0)
call ale#Set('elm_elm_format_options', '--yes')

call ale#fix#registry#Add('elm_format', 'ale#fixers#elm_format#Fix', ['elm'], 'Fix Elm files with elm-format.')

function! ale#fixers#elm_format#GetExecutable(buffer) abort
    return ale#path#FindExecutable(a:buffer, 'elm_elm_format', [
    \   'elm-format',
    \])
endfunction

function! ale#fixers#elm_format#Fix(buffer, lines) abort
    let l:options = ale#Var(a:buffer, 'elm_elm_format_options')

    return {
    \   'command': ale#Escape(ale#fixers#elm_format#GetExecutable(a:buffer))
    \       . ' %t'
    \       . ' ' . l:options,
    \   'read_temporary_file': 1,
    \}
endfunction
