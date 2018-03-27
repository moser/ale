" Author: moser <moser@moserei.de>
" Description: Integration of black with ALE.

call ale#Set('python_black_executable', 'black')
call ale#Set('python_black_options', '')

function! ale#fixers#black#Fix(buffer) abort
    let l:executable = ale#Var(a:buffer, 'python_black_executable')
    let l:options = ale#Var(a:buffer, 'python_black_options')

    return {
    \   'command': ale#Escape(l:executable)
    \       . ' - '
    \       . (empty(l:options) ? '' : ' ' . l:options)
    \}
endfunction
