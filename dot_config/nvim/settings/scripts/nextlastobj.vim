onoremap <silent> an :<C-u>call <SID>NextTextObject('a', 'f')<CR>
xnoremap <silent> an :<C-u>call <SID>NextTextObject('a', 'f')<CR>
onoremap <silent> in :<C-u>call <SID>NextTextObject('i', 'f')<CR>
xnoremap <silent> in :<C-u>call <SID>NextTextObject('i', 'f')<CR>

onoremap <silent> al :<C-u>call <SID>NextTextObject('a', 'F')<CR>
xnoremap <silent> al :<C-u>call <SID>NextTextObject('a', 'F')<CR>
onoremap <silent> il :<C-u>call <SID>NextTextObject('i', 'F')<CR>
xnoremap <silent> il :<C-u>call <SID>NextTextObject('i', 'F')<CR>

function! s:NextTextObject(motion, dir)
  let c = nr2char(getchar())

  if c ==# "b"
      let c = "("
  elseif c ==# "B"
      let c = "{"
  elseif c ==# "r"
      let c = "["
  endif

  exe "normal! ".a:dir.c."v".a:motion.c
endfunction
