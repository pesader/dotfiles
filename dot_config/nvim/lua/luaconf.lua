require'nvim-tree'.setup {
  hijack_directories = { enable = false },
  disable_netrw       = true,
  hijack_netrw        = false,
  open_on_tab         = false,
  hijack_cursor       = false,
  sync_root_with_cwd  = true,
  renderer = {
    indent_markers = {
      enable = true,
    },
    icons = {
      webdev_colors = true,
    },
  },
  actions = {
    open_file = {
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
          buftype = { "nofile", "terminal", "help" },
        },
      },
    },
    change_dir = {
      global = true,
    },
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = true,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    side = 'left',
    number = false,
    relativenumber = false,
    signcolumn = "no"
  },
  trash = {
    cmd = "gio trash",
    require_confirm = true
  }
}

require("ibl").setup({
  scope = {
    enabled = false
  }
})

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = ' ', right = ' '},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {'dashboard'},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'diff', 'filename'},
    lualine_x = {
      {
      'diagnostics',
      sources = { 'coc' },
      sections = { 'error', 'warn', 'info', 'hint' },
      diagnostics_color = {
        error = 'CocErrorSign', -- Changes diagnostics' error color.
        warn  = 'CocWarningSign',  -- Changes diagnostics' warn color.
        info  = 'CocHintSign',  -- Changes diagnostics' info color.
        hint  = 'CocHintSign',  -- Changes diagnostics' hint color.
      },
      symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '},
      colored = true,           -- Displays diagnostics status in color if set to true.
      update_in_insert = false, -- Update diagnostics in insert mode.
      always_visible = false,   -- Show diagnostics even if there are none.
      }
    },
    lualine_y = {'encoding', 'progress'},
    lualine_z = {'location'}
  },
  tabline = {},
  extensions = {'quickfix', 'fugitive', 'nvim-tree', 'fzf'}
}

require("dirbuf").setup {
    hash_padding = 2,
    show_hidden = true,
    sort_order = "default",
    write_cmd = "DirbufSync",
}

require("todo-comments").setup {}

local catppuccin = require("catppuccin")
catppuccin.setup()
vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
vim.cmd[[colorscheme catppuccin]]

-- local dashboard = require("dashboard")
-- dashboard.custom_center = {
--   {icon = '  ',
--   desc = 'Load session                ',
--   shortcut = ' s l',
--   action ='SessionLoad'},
--   {icon = 'ﭯ  ',
--   desc = 'Find history                ',
--   action =  'History',
--   shortcut = ' f o'},
--   {icon = '  ',
--   desc = 'Find file                   ',
--   action = 'Files',
--   shortcut = ' f f'},
--   {icon = '  ',
--   desc = 'Find  word                  ',
--   action = 'Rg',
--   shortcut = ' f w'},
--   {icon = '  ',
--   desc = 'Settings                    ',
--   action = 'e $HOME/.config/nvim/init.vim',
--   shortcut = '   i'},
-- }
-- dashboard.custom_footer = {}
-- dashboard.custom_header = {
--   '',
--   '   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣭⣿⣶⣿⣦⣼⣆         ',
--   '    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ',
--   '          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷⠄⠄⠄⠄⠻⠿⢿⣿⣧⣄     ',
--   '           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ',
--   '          ⢠⣿⣿⣿⠈  ⠡⠌⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ',
--   '   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘⠄ ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ',
--   '  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ',
--   ' ⣠⣿⠿⠛⠄⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ',
--   ' ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇⠄⠛⠻⢷⣄ ',
--   '      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ',
--   '       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ',
--   '',
-- }
-- dashboard.hide_statusline = true
-- dashboard.hide_tabline = true
-- dashboard.session_directory = vim.fn.stdpath('cache').."/session"

vim.g.nightflyWinSeparator = 2

require("bufjump").setup {
  forward = "<A-i>",
  backward = "<A-o>",
  on_success = nil
}

require("treesitter-context").setup{}
-- vim.cmd[[hi TreesitterContext guibg=#313244]]

-- require('hlargs').setup()

require('neogen').setup{}

-- require('murmur').setup {
--   cursor_rgb = 'purple', -- default to '#393939'
--   max_len = 80, -- maximum word-length to highlight
--   exclude_filetypes = {'dashboard'},
-- }
--
require('git-conflict').setup()

local augend = require("dial.augend")
require("dial.config").augends:register_group{
  default = {
    augend.integer.alias.decimal_int,
    augend.integer.alias.hex,
    augend.integer.alias.octal,
    augend.integer.alias.binary,
    augend.date.alias["%d/%m/%Y"],
    augend.date.alias["%m/%d/%Y"],
    augend.constant.alias.bool,
    augend.semver.alias.semver,
    augend.constant.new{
      elements = {"and", "or"},
      word = true,
      cyclic = true,
    },
    augend.constant.new{
      elements = {"&&", "||"},
      word = false,
      cyclic = true,
    },
    augend.constant.new{
      elements = {"<", "<=", ">", ">="},
      word = false,
      cyclic = true,
    },
    augend.constant.new{
      elements = {"+=", "++", "-=", "--"},
      word = false,
      cyclic = true,
    },
    augend.constant.new{
      elements = {"+", "-"},
      word = false,
      cyclic = true,
    },
    augend.constant.new{
      elements = {"==", "!="},
      word = false,
      cyclic = true,
    },
    augend.constant.new{
      elements = {"True", "False"},
      word = false,
      cyclic = true,
    },
    augend.constant.new{
      elements = {"I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X"},
      word = false,
      cyclic = true,
    },
  },
}

vim.keymap.set("n", "<C-a>", require("dial.map").inc_normal(), {noremap = true})
vim.keymap.set("n", "<C-x>", require("dial.map").dec_normal(), {noremap = true})
vim.keymap.set("n", "g<C-a>", require("dial.map").inc_gnormal(), {noremap = true})
vim.keymap.set("n", "g<C-x>", require("dial.map").dec_gnormal(), {noremap = true})
vim.keymap.set("v", "<C-a>", require("dial.map").inc_visual(), {noremap = true})
vim.keymap.set("v", "<C-x>", require("dial.map").dec_visual(), {noremap = true})
vim.keymap.set("v", "g<C-a>",require("dial.map").inc_gvisual(), {noremap = true})
vim.keymap.set("v", "g<C-x>",require("dial.map").dec_gvisual(), {noremap = true})

require'nvim-lastplace'.setup{}

require"gitlinker".setup({
  callbacks = {
        ["gitlab.gnome.org"] = require"gitlinker.hosts".get_gitlab_type_url,
  },
-- default mapping to call url generation with action_callback
  mappings = "<leader>gy"
})vim.api.nvim_set_keymap('n', '<leader>gY', '<cmd>lua require"gitlinker".get_repo_url()<cr>', {silent = true})

local codewindow = require('codewindow')
codewindow.setup()
codewindow.apply_default_keybinds()

require('nvim-cursorline').setup {
  cursorword = {
    enable = true,
    min_length = 3,
    hl = { underline = true },
  },
  cursorline = {
    enable = false,
  },
}

require('gitsigns').setup {
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~_' },
    untracked    = { text = '╎' },
  },
  current_line_blame_opts = {
    delay = 0,
  },
  yadm = {
    enable = (vim.fn.executable('yadm') == 1)
  },

  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation
    map('n', ']h', function()
      if vim.wo.diff then return ']h' end
      vim.schedule(function() gs.next_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    map('n', '[h', function()
      if vim.wo.diff then return '[h' end
      vim.schedule(function() gs.prev_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    -- Actions
    local function toggle()
      gs.toggle_numhl()
      gs.toggle_deleted()
      gs.toggle_linehl()
      gs.toggle_word_diff()
    end

    map('n', '<leader>gs', gs.stage_hunk)
    map('n', '<leader>gr', gs.reset_hunk)
    map('v', '<leader>gs', function() gs.stage_hunk {vim.fn.line("."), vim.fn.line("v")} end)
    map('v', '<leader>gr', function() gs.reset_hunk {vim.fn.line("."), vim.fn.line("v")} end)
    map('n', '<leader>gS', gs.stage_buffer)
    map('n', '<leader>gu', gs.undo_stage_hunk)
    map('n', '<leader>gR', gs.reset_buffer)
    map('n', '<leader>gb', gs.toggle_current_line_blame)
    map('n', '<leader>gd', gs.diffthis)
    map('n', '<leader>gt', toggle)
    map('n', '<leader>gq', ':Gitsigns setqflist "all"<CR>')

    -- Text object
    map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
    map({'o', 'x'}, 'ah', ':<C-U>Gitsigns select_hunk<CR>')

  end
}

require('trim').setup({
  ft_blocklist = {"markdown"},
  trim_on_write = false,
})

require('treesj').setup({
  use_default_keymaps = false,
})

vim.keymap.set('n', 'gK', require('treesj').split)
vim.keymap.set('n', 'gJ', require('treesj').join)

require('highlight-undo').setup({
    hlgroup = 'CurSearch',
    duration = 300,
    keymaps = {
      {'n', 'u', 'undo', {}},
      {'n', '<C-r>', 'redo', {}},
    }
})
