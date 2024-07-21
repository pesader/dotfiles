" Map leader
let mapleader = "\<Space>"

" Plugins
source $HOME/.config/nvim/settings/plugins/plugins.vim
source $HOME/.config/nvim/settings/plugins/git-blame.vim
source $HOME/.config/nvim/settings/plugins/pydocstring.vim
source $HOME/.config/nvim/settings/plugins/undotree.vim
source $HOME/.config/nvim/settings/plugins/yoink.vim
source $HOME/.config/nvim/settings/plugins/fzf.vim
source $HOME/.config/nvim/settings/plugins/signature.vim
" source $HOME/.config/nvim/settings/plugins/highlightedyank.vim
source $HOME/.config/nvim/settings/plugins/quick-scope.vim
source $HOME/.config/nvim/settings/plugins/tagbar.vim
source $HOME/.config/nvim/settings/plugins/tabline.vim
source $HOME/.config/nvim/settings/plugins/switch.vim
source $HOME/.config/nvim/settings/plugins/swap.vim
source $HOME/.config/nvim/settings/plugins/neoterm.vim
source $HOME/.config/nvim/settings/plugins/netrw.vim
source $HOME/.config/nvim/settings/plugins/treesitter.vim
source $HOME/.config/nvim/settings/plugins/smoothie.vim
source $HOME/.config/nvim/settings/plugins/vim-textobj-pastedtext.vim
source $HOME/.config/nvim/settings/plugins/vim-latex-live-preview.vim
source $HOME/.config/nvim/settings/plugins/minimap.vim
source $HOME/.config/nvim/settings/plugins/coc.vim
luafile $HOME/.config/nvim/lua/luaconf.lua

" General
source $HOME/.config/nvim/settings/general/basics.vim
source $HOME/.config/nvim/settings/general/keybindings.vim

" Scripts
source $HOME/.config/nvim/settings/scripts/diffsaved.vim
source $HOME/.config/nvim/settings/scripts/spellcycle.vim
source $HOME/.config/nvim/settings/scripts/nextlastobj.vim
source $HOME/.config/nvim/settings/scripts/foldclangcomments.vim

" " Autocommands
if !exists("g:autocmds_loaded")
  source $HOME/.config/nvim/settings/general/autocmds.vim
endif

" hi! link Hlargs TSParameter
" hi! GitSignsUntracked guifg=#6c7086 gui=bold
