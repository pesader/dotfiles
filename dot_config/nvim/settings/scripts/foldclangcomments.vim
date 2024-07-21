function! s:FoldClangComments()
    exe "setlocal foldmethod=marker"
    exe "setlocal foldmarker=/*,*/"
    normal zm
endfunction
com! FoldClangComments call s:FoldClangComments()
