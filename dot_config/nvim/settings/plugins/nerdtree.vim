" Change default mappings
let NERDTreeMapOpenSplit = "h"
let NERDTreeMapPreviewSplit = "gh"

let NERDTreeMapOpenVSplit = "v"
let NERDTreeMapPreviewVSplit = "gv"

" Show line numbers
let g:NERDTreeShowLineNumbers=1

"NERDTree
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction
com! NERDTreeSync call SyncTree()
