"----------------------------------------------------------------------------
" BASIC MAPPINGS

" Use Tab as Esc
vnoremap <Tab> <Esc>
onoremap <Tab> <Esc>
inoremap <Tab> <Esc>

nmap <silent> <C-n> :bn<CR>
nmap <silent> <C-p> :bp<CR>

" Center search results
" nmap <silent> n nzz
" nmap <silent> N Nzz

" Change o default behavior
" nnoremap o o<Esc>
" nnoremap O O<Esc>
" nnoremap so o
" nnoremap sO O

" Quick line navigation
noremap H ^
noremap L g_

" Easy wrapped line navigation
noremap j gj
noremap k gk

" Make Y work as expected
nnoremap Y yg_

" Delete content, not line
" nnoremap dc cc<Esc>

" Quick pane navigation
nnoremap <silent> <C-l> <C-w>l
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k


" Clear commandline
nmap <Esc> :echon<CR>

" Map leader
let mapleader = "\<Space>"

" Consistent J and K
nnoremap K i<CR><Esc>

"Keep visual selection after indent
vnoremap > >gv
vnoremap < <gv

" Replace easily
vnoremap p "_dP

" Leave terminal mode
" tnoremap <C-o> <C-\><C-n>

" Select completion on commandline
cmap <C-l> <C-y>

" <C-^> is too hard to reach...
noremap <C-m> <C-^>

" Quick spell correction
inoremap <C-s> <C-G>u<Esc>[s1z=`]a<C-G>u

" Easy accented characters
" nnoremap <silent> ` s<c-r>=tr(@", 'cçaáàãâeéêiíoóõôuúCÇAÁÀÃÂEÉÊIÍOÓÕÔUÚ', 'çcáàãâaéêeíióõôoúuÇCÁÀÃÂAÉÊEÍIÓÕÔOÚU')<CR><Esc>

" Saving and quitting
function! CloseOnLast()
    let cnt = 0

    for i in range(0, bufnr("$"))
        if buflisted(i)
            let cnt += 1
        endif
    endfor

    if cnt <= 1
        q
    else
        bdelete
    endif
endfunction

" nnoremap <silent> <Leader>q :call CloseOnLast()<CR>
" nnoremap <Leader>w :w<CR>

" Consistent double keypress
" vnoremap v V

" Goodbye Ex Mode
nnoremap Q @@

" Easy redo on insert mode
" inoremap <C-R> <C-G>u<C-R>

" Zoomable splits (should exist by default!)
map <silent> <C-w>z :ZoomToggle<CR>

"----------------------------------------------------------------------------
" REPEATABLE MAPPINGS

" Move character easily
nnoremap <silent> <Plug>MoveCharRight xp
\:call repeat#set("\<Plug>MoveCharRight")<CR>
nmap ]v <Plug>MoveCharRight
nnoremap <silent> <Plug>MoveCharLeft xhP
\:call repeat#set("\<Plug>MoveCharLeft")<CR>
nmap [v <Plug>MoveCharLeft

"----------------------------------------------------------------------------
" CUSTOM COMMAND MAPPINGS

" Diff current bufer with saved file
nnoremap <silent> <Leader>d :DiffSaved<CR>

"----------------------------------------------------------------------------
" PLUGIN MAPPINGS

" Dashboard
nmap <Leader>sl :SessionLoad<CR>
nmap <Leader>ss :SessionSave<CR>
nmap <Leader>i :e $HOME/.config/nvim/init.vim<CR>

" Switch
nnoremap <silent> gS :Switch<CR>

" Surround
nmap gs ys

" FZF
nnoremap <silent> <Leader>ff :Files<CR>
nnoremap <silent> <Leader>fl :Lines<CR>
nnoremap <silent> <Leader>fm :Marks<CR>
nnoremap <silent> <Leader>fo :History<CR>
nnoremap <silent> <Leader>f: :Commands<CR>
nnoremap <silent> <Leader>fc :History:<CR>
nnoremap <silent> <Leader>f/ :History/<CR>
nnoremap <silent> <Leader>fk :Maps/<CR>
nnoremap <silent> <Leader>fw :Rg<CR>
nnoremap <silent> <Leader>ft :Tags<CR>
nnoremap <silent> <Leader>fh :Helptags<CR>
nnoremap <silent> <Leader>fl :Lines<CR>
nnoremap <silent> <Leader>fg :GFiles?<CR>
nnoremap <silent> <Leader>fb :Buffers<CR>

" Zoxide
nnoremap <silent> <Leader>fz :Zi<CR>

" Tagbar
nnoremap <silent> <Leader>t :Tagbar<CR>

" UndoTree
noremap <silent> <Leader>u :UndotreeToggle<CR>

" File Explorer
nnoremap <silent><Leader>ee :NvimTreeOpen<CR>
nnoremap <silent><Leader>ef :NvimTreeFindFile<CR>

" COC
inoremap <silent><expr> <C-n>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<C-n>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-p>"

inoremap <silent><expr> <C-l> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <PageDown> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <PageUp> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <PageDown> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <PageUp> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <PageDown> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <PageUp> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Show documentation
nnoremap <silent> gh :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nmap <silent> [d <Plug>(coc-diagnostic-prev)
nmap <silent> ]d <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gm <Plug>(coc-implementation)

" Cycling between header and source file
nmap <silent> <Leader>c :CocComman clangd.switchSourceHeader<CR>

" Symbol renaming.
nmap <F2> <Plug>(coc-rename)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Do default action for next or previous item.
nnoremap <silent><nowait> <Leader>j  :<C-u>CocNext<CR>
nnoremap <silent><nowait> <Leader>k  :<C-u>CocPrev<CR>

" Map function and class text objects
xnoremap iF <Plug>(coc-funcobj-i)
onoremap iF <Plug>(coc-funcobj-i)
xnoremap aF <Plug>(coc-funcobj-a)
onoremap aF <Plug>(coc-funcobj-a)
xnoremap iC <Plug>(coc-classobj-i)
onoremap iC <Plug>(coc-classobj-i)
xnoremap aC <Plug>(coc-classobj-a)
onoremap aC <Plug>(coc-classobj-a)

let g:coc_snippet_next = '<Down>'
let g:coc_snippet_prev = '<Up>'

" Fugitive
nnoremap <silent> <Leader>gg :G<CR>
nnoremap <silent> <Leader>gd :Gdiffsplit<CR>
nnoremap <silent> <Leader>gv :Gvdiffsplit<CR>
nnoremap <silent> <Leader>gV :DiffviewOpen<CR>
nnoremap <silent> <Leader>gc :Git commit<CR>
nnoremap <silent> <Leader>ga :Git commit --amend<CR>
nnoremap <silent> <Leader>gl :Git log<CR>

nnoremap <silent> <Leader>go :Git checkout
nnoremap <silent> <Leader>gw :Git show

" Git blame
nnoremap <silent> <Leader>gb :GitBlameToggle<CR>
nnoremap <silent> <Leader>gh :GitBlameCopySHA<CR>

" Expand region
vnoremap K <Plug>(expand_region_expand)
vnoremap J <Plug>(expand_region_shrink)
