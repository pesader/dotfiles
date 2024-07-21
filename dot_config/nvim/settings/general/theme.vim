colorscheme nord

" Trasparent background
highlight Normal guibg=none
highlight SignColumn guibg=none
highlight VertSplit guibg=none
" hi IncSearch guifg=#2e3440 ctermfg=237 guibg=#ebcb8b ctermbg=222 gui=underline cterm=underline
" hi Search guifg=#2e3440 ctermfg=237 guibg=#ebcb8b ctermbg=222 gui=NONE cterm=NONE
hi VertSplit guifg=#434c5e ctermfg=239 guibg=#2e3440 ctermbg=237 gui=NONE cterm=NONE
hi Identifier guifg=#8fbcbb ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi MatchParen guifg=#88c0d0 ctermfg=110 guibg=#4c566a ctermbg=240 gui=NONE cterm=NONE
hi String guifg=#a3be8c ctermfg=144 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight DashboardCenter  guifg='#A3BE8C' guibg=none ctermbg=none ctermfg=green
" hi TSConstant guifg=#5e81ac ctermfg=67 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConstant guifg=#81a1c1 ctermfg=109 guibg=NONE ctermbg=NONE gui=italic,bold cterm=NONE
" highlight link DashboardShortCut Keyword

" Diff
hi DiffAdd guifg=#a3be8c ctermfg=144 guibg=#3b4252 ctermbg=238 gui=NONE cterm=NONE
hi DiffChange guifg=#ebcb8b ctermfg=222 guibg=#3b4252 ctermbg=238 gui=NONE cterm=NONE
hi DiffDelete guifg=#bf616a ctermfg=131 guibg=#3b4252 ctermbg=238 gui=NONE cterm=NONE

" EasyMotion
highlight EasyMotionTarget guifg='#A3BE8C' guibg=none ctermbg=none ctermfg=green
highlight EasyMotionShade guifg='#434C5E' guibg=none ctermbg=none ctermfg=8
highlight EasyMotionTarget2First guifg='#EBCB8B' guibg=none ctermbg=none ctermfg=yellow
highlight EasyMotionTarget2Second guifg='#BF616A' guibg=none ctermbg=none ctermfg=red
highlight EasyMotionMoveHL ctermbg=green ctermfg=black
highlight EasyMotionIncSearch ctermbg=green ctermfg=black

" WhichKey
highlight WhichKeySeperator guifg='#A3BE8C' guibg=none

" Tagbar
highlight TagbarAccessPublic guifg='#A3BE8C' guibg=none
highlight TagbarAccessProtected guifg='#EBCB8B' guibg=none
highlight TagbarAccessPrivate guifg='#BF616A' guibg=none

" Coc
" hi CocFloating guibg=#3b4252 ctermfg=239 ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerIndentLine guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferRoot guifg=#81a1c1 ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileRoot guifg=#81a1c1 ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileDirectory guifg=#81a1c1 ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferFullPath guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileFullPath guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferReadonly guifg=#b48ead ctermfg=139 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferModified guifg=#b48ead ctermfg=139 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferNameVisible guifg=#d08770 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileReadonly guifg=#b48ead ctermfg=139 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileModified guifg=#b48ead ctermfg=139 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileHidden guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerHelpLine guifg=#b48ead ctermfg=139 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocWarningHighlight guifg=#ebcb8b ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocErrorHighlight guifg=#bf616a ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocWarningSign guifg=#ebcb8b ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocErrorSign guifg=#bf616a ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocInfoSign guifg=#88c0d0 ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocHintSign guifg=#5e81ac ctermfg=67 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

" Nvim tree
hi NvimTreeFolderName guifg=#81a1c1 ctermfg=109 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeGitDirty guifg=#ebcb8b ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

" Treesitter
highlight TSText guifg='#A3BE8C'
highlight TSStrong guifg='#A3BE8C'
highlight TSEmphasis guifg='#A3BE8C'
highlight TSUnderline guifg='#A3BE8C'
highlight TSTitle guifg='#A3BE8C'
highlight TSLiteral guifg='#A3BE8C'
highlight TSURI guifg='#A3BE8C'

" Signature
highlight SignatureMarkText guifg='#88C0D0'
