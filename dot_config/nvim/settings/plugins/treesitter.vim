lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  ignore_install = {},
  highlight = {
    enable = true,
    disable = {},
  },
  matchup = {
    enable = true,
    include_match_words = true,
  }
}
EOF

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
