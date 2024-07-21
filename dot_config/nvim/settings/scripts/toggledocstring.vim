let g:docstrings_visible = 1
function! s:DocstringToggle()
    if g:docstrings_visible == 1
        highlight! TSText guifg='#4C566A'
        highlight! TSStrong guifg='#4C566A'
        highlight! TSEmphasis guifg='#4C566A'
        highlight! TSUnderline guifg='#4C566A'
        highlight! TSTitle guifg='#4C566A'
        highlight! TSLiteral guifg='#4C566A'
        highlight! TSURI guifg='#4C566A'
        " syn region Comment start=/"""/ end=/"""/
        let g:docstrings_visible = 0
    else
        highlight! TSText guifg='#A3BE8C'
        highlight! TSStrong guifg='#A3BE8C'
        highlight! TSEmphasis guifg='#A3BE8C'
        highlight! TSUnderline guifg='#A3BE8C'
        highlight! TSTitle guifg='#A3BE8C'
        highlight! TSLiteral guifg='#A3BE8C'
        highlight! TSURI guifg='#A3BE8C'
        " syn region String start=/"""/ end=/"""/
        let g:docstrings_visible = 1
    endif
endfunction
com! DocstringToggle call s:DocstringToggle()
