function! s:SpellEnablePTBR()
    exe "setlocal spelllang=pt_br"
    exe "setlocal spell"
    exe "setlocal foldlevel=0"
endfunction
com! SpellEnablePTBR call s:SpellEnablePTBR()

function! s:SpellEnableENUS()
    exe "setlocal spelllang=en_us"
    exe "setlocal spell"
endfunction
com! SpellEnableENUS call s:SpellEnableENUS()

function! s:SpellCycle()
    if !&spell
        SpellEnablePTBR
    elseif &spell && &spelllang ==# 'pt_br'
        SpellEnableENUS
    elseif &spell && &spelllang ==# 'en_us'
        exe 'setlocal nospell'
    endif
endfunction
com! SpellCycle call s:SpellCycle ()

