function! s:DiffWithSaved()
  let l:line_pos = line('.')
  let l:col_pos = col('.')
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
  call cursor(l:line_pos, l:col_pos)
  nnoremap <silent> <buffer> q :q<CR>
endfunction
com! DiffSaved call s:DiffWithSaved()
