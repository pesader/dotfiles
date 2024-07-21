let g:textobj_wordcolumn_no_default_key_mappings = 1

call textobj#user#map('wordcolumn', {
            \ 'word' : {
            \   'select-i' : 'ik',
            \   'select-a' : 'ak',
            \   },
            \ 'WORD' : {
            \   'select-i' : 'iK',
            \   'select-a' : 'aK',
            \   },
            \ })
