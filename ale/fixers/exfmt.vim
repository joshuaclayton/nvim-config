call ale#Set('elixir_exfmt_executable', 'mix')
call ale#Set('elixir_exfmt_use_global', 1)

call ale#fix#registry#Add('exfmt', 'ale#fixers#exfmt#Fix', ['elixir'], 'Fix Elixir files with mix exfmt.')

function! ale#fixers#exfmt#GetExecutable(buffer) abort
    return ale#node#FindExecutable(a:buffer, 'elixir_exfmt', [
    \   'mix',
    \])
endfunction

function! ale#fixers#exfmt#Fix(buffer, lines) abort
    return {
    \   'command': ale#Escape(ale#fixers#exfmt#GetExecutable(a:buffer))
    \       . ' exfmt %t',
    \   'read_temporary_file': 0,
    \}
endfunction
