function MyCustomHighlights()
    hi! semshiLocal guifg=#88c0d0
    hi! semshiGlobal guifg=#a3be8c
    hi! semshiImported guifg=#ebcb8b
    hi! semshiParameter guifg=#5e81ac
    hi! semshiParameterUnused guifg=#88c0d0 cterm=underline gui=underline
    hi! semshiFree guifg=#b48ead
    hi! semshiBuiltin guifg=#d08770
    hi! semshiAttribute guifg=#a3be8c
    hi! semshiSelf guifg=#b2b2b2
    hi! semshiUnresolved guifg=#ebcb8b gui=underline
    hi! semshiSelected guifg=#eceff4 guibg=#bf616a
endfunction
autocmd FileType python call MyCustomHighlights()
