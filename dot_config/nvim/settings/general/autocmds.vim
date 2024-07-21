" Autocmd Group
augroup mygroup
  au!
augroup END

autocmd mygroup FileType vim if bufname('%') == '[Command Line]' | let b:coc_suggest_disable = 1 | nnoremap <buffer> <C-j> <CR> | endif
autocmd mygroup FileType markdown,text,tex,plaintex let b:nonProgrammingFile=1
function! BetterLineNavigation()
  if exists('b:nonProgrammingFile') && !&diff
    " noremap <buffer> H g^
    " noremap <buffer> L g$
    noremap <buffer> j gj
    noremap <buffer> k gk
    " let b:coc_suggest_disable = 1
    let g:vem_tabline_show=1
    setlocal colorcolumn=0
    set cmdheight=1
    " silent setlocal wrap
    hi! TabLine guibg=NONE
    hi! CursorLine guibg=NONE
    " Goyo
  endif
endfunction
autocmd mygroup BufEnter * call BetterLineNavigation()
" autocmd mygroup FileType text,markdown,tex,plaintex :Goyo<CR>

" Dashboard
autocmd FileType dashboard setlocal cul

" NvimTree Session
autocmd mygroup SessionLoadPost * :NvimTreeRefresh

" Remove trailing whitespace
" autocmd mygroup BufWritePre * :%s/\s\+$//e

" NvimTree
autocmd BufWinEnter NvimTree setlocal cursorline

" Exclude quickfix from :bprev and bnext
augroup qf
    autocmd!
    autocmd FileType qf set nobuflisted
augroup END

" Anti-resourcing prevention
let g:autocmds_loaded = 1

" Highlight yank
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=200 }
augroup END
