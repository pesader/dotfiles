" let g:neomake_python_enabled_makers = ['vulture', 'mypy', 'pylint', 'bandit']
let g:neomake_python_enabled_makers = ['bandit']
let g:neomake_echo_current_error=1
let g:neomake_virtualtext_current_error=0
call neomake#configure#automake('rw')
