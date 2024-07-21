let g:which_key_use_floating_win=0
let g:which_key_floating_relative_win=0
let g:which_key_vertical=1
let g:which_key_max_size = 30
" let g:which_key_timeout=100

call which_key#register('<Space>', "g:which_key_map")

let g:which_key_display_names = {
      \ '<CR>' : '↵',
      \ '<TAB>' : '⇆',
      \ '<Space>' : '␣'}

" Single mappings
let g:which_key_map = {}
let g:which_key_map.i = 'insert 1char'
let g:which_key_map.a = 'append 1char'
let g:which_key_map.r = 'redraw'
" let g:which_key_map.j = {
"       \ 'name' : '+jump',
"       \ 'q' : 'open-quickfix'    ,
"       \ 'l' : 'open-locationlist',
"       \ }
