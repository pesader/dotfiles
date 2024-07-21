" Appearance
set path+=**
set mouse=a
set relativenumber number
set number
set signcolumn=auto
set list
set listchars+=precedes:❮,extends:❯
set listchars+=tab:▸-
set linebreak
set nowrap
set showcmd
set noshowmode
set cmdheight=1
set laststatus=2
set colorcolumn=79
set wildoptions=pum
set termguicolors
set foldlevelstart=1
set pumheight=10
set nofoldenable

" Behavior
set noswapfile
let g:clipboard = {
      \   'name': 'xsel_override',
      \   'copy': {
      \      '+': 'xsel --input --clipboard',
      \      '*': 'xsel --input --primary',
      \    },
      \   'paste': {
      \      '+': 'xsel --output --clipboard',
      \      '*': 'xsel --output --primary',
      \   },
      \   'cache_enabled': 1,
      \ }
set clipboard=unnamedplus
set hidden
set formatoptions+=cro
filetype plugin indent on
set updatetime=300
set ttimeoutlen=100
set splitbelow
set splitright
set sidescrolloff=10
set scrolloff=1
set wildmenu
set confirm
set visualbell
set spelllang=pt_br
set nospell

" Live substitution
set inccommand=split

" Shortmess
set shortmess+=FIcats
" F don't give the file info when editing a file
" I don't give the intro message when starting Vim
" c don't give ins-completion-menu messages
" a abbreviate
" t truncate file message
" s don't give end of file search messages

if has("persistent_undo")
  set undodir=~/.config/nvim/undo
  set undofile
endif

" Search
" set nohlsearch
set ignorecase
set smartcase
set incsearch

" Indentation
syntax on
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4

" Cursor
augroup cur
    au!
augroup END

autocmd cur VimEnter * silent set cul
autocmd cur InsertEnter * silent set nocul
autocmd cur InsertLeave * silent set cul

" Nethrw
autocmd FileType netrw setl bufhidden=wipe
let g:netrw_fastbrowse = 0
