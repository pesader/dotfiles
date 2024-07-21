set rtp+=/home/pedro/clones/fzf/bin/fzf
" let loaded_netrwPlugin = 1

call plug#begin()
" Time tracking
Plug 'wakatime/vim-wakatime'
Plug 'ActivityWatch/aw-watcher-vim'

" Themes
Plug 'projekt0n/github-nvim-theme'
Plug 'sainnhe/everforest'
Plug 'folke/tokyonight.nvim'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'mhartington/oceanic-next'
Plug 'glepnir/zephyr-nvim'
Plug 'EdenEast/nightfox.nvim'
Plug 'yashguptaz/calvera-dark.nvim'
Plug 'sts10/vim-pink-moon'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'kvrohit/substrata.nvim'
Plug 'rebelot/kanagawa.nvim'
Plug 'kwkarlwang/bufjump.nvim'
" Plug 'rmehri01/onenord.nvim'
Plug 'nanotee/zoxide.vim'
Plug 'dbeniamine/cheat.sh-vim'
" Plug 'RRethy/vim-illuminate'
" Plug 'm-demare/hlargs.nvim'
Plug 'tzachar/highlight-undo.nvim'

" Replace vimv with this plugin
Plug 'elihunter173/dirbuf.nvim'

" Dependencies
Plug 'nvim-lua/plenary.nvim'

" Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'junegunn/vim-slash'
" Plug 'romainl/vim-cool'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/nvim-treesitter-context'
Plug 'folke/todo-comments.nvim'
Plug 'danymat/neogen'

" Window and session management
Plug 'markstory/vim-zoomwin', {'on': 'ZoomToggle'}
" Plug 'glepnir/dashboard-nvim'
Plug 'airblade/vim-rooter', {'on': ['Rooter', 'RooterToggle']}

" Improved editing
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-abolish'
Plug 'tommcdo/vim-exchange'
Plug 'AndrewRadev/switch.vim'
Plug 'machakann/vim-swap'
Plug 'junegunn/vim-peekaboo'
Plug 'tpope/vim-rsi'
" Plug 'AndrewRadev/splitjoin.vim'
Plug 'Wansmer/treesj'
Plug 'chrisgrieser/nvim-spider'
" Plug 'neomake/neomake'
Plug '$HOME/Documents/repos/neomake', { 'branch': 'add-bandit-maker' }
Plug 'junegunn/vim-easy-align'
Plug 'monaqa/dial.nvim'
Plug 'cappyzawa/trim.nvim'

" Improved interface
Plug 'hoob3rt/lualine.nvim'
Plug 'junegunn/goyo.vim', {'on': 'Goyo'}
Plug 'norcalli/nvim-colorizer.lua', {'on': 'ColorizerAttachToBuffer'}
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}
" Plug 'machakann/vim-highlightedyank'
Plug 'kshenoy/vim-signature'
Plug 'pacha/vem-tabline'
Plug 'psliwka/vim-smoothie'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'gorbit99/codewindow.nvim'
Plug 'yamatsum/nvim-cursorline'

" Motions
Plug 'unblevable/quick-scope'

" Text objects
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'glts/vim-textobj-comment'
Plug 'kana/vim-textobj-indent'
Plug 'saaguero/vim-textobj-pastedtext'

" Programming
if executable('npm')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

Plug 'preservim/tagbar', {'on': 'Tagbar'}
" Plug 'metakirby5/codi.vim'
" Plug 'kassio/neoterm'
Plug 'honza/vim-snippets'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'akinsho/git-conflict.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'ruifm/gitlinker.nvim'
Plug 'lewis6991/gitsigns.nvim'

" Markdown
Plug 'dhruvasagar/vim-table-mode', { 'for': 'markdown' }
Plug 'mzlogin/vim-markdown-toc', { 'for': 'markdown' }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" LaTeX
" Plug 'xuhdev/vim-latex-live-preview'
" Plug 'nyngwang/murmur.lua'

" Cemitery
" Plug 'axlebedev/footprints'
" Plug 'mattn/emmet-vim'
" Plug 'liuchengxu/vim-which-key'
" Plug 'tpope/vim-abolish'
" Plug 'Yggdroot/indentLine'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'andymass/vim-matchup'
Plug 'tpope/vim-unimpaired'
Plug 'ethanholz/nvim-lastplace'
Plug 'jghauser/mkdir.nvim'
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
" Plug 'p00f/nvim-ts-rainbow'
" Plug 'wfxr/minimap.vim'
" Plug 'folke/which-key.nvim'
call plug#end()
