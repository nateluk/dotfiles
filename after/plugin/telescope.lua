local actions = require 'telescope.actions'
local fb_actions = require 'telescope._extensions.file_browser.actions'
local function telescope_buffer_dir()
  return vim.fn.expand '%:p:h'
end
require('telescope').setup {
  defaults = {
    -- dynamic_preview_title = true,
    sorting_strategy = 'ascending',
    -- layout_config = {
    --   prompt_position = 'top',
    -- },
    mappings = {
      n = {
        ['q'] = actions.close,
        ['sd'] = actions.smart_send_to_qflist,
      },
      i = {
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous,
      },
    },
    file_ignore_patterns = {
      '.git/',
    },
  },
  pickers = {
    find_files = {
      layout_config = { prompt_position = 'top' },
    },
    buffers = {
      initial_mode = 'normal',
    },
  },
  extensions = {
    ['ui-select'] = {
      require('telescope.themes').get_dropdown(),
    },
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = 'smart_case', -- or "ignore_case" or "respect_case"
    },
    file_browser = {
      theme = 'dropdown',
      hijack_netrw = true,
      path = '%:p:h',
      cwd = telescope_buffer_dir(),
      respect_gitignore = false,
      hidden = true,
      grouped = true,
      previewer = false,
      initial_mode = 'normal',
      layout_config = { height = 30, width = 120 },
      mappings = {
        ['i'] = {
          -- your custom insert mode mappings
        },
        ['n'] = {
          -- your custom normal mode mappings
          ['-'] = fb_actions.goto_parent_dir,
        },
      },
    },
  },
}

-- Enable Telescope extensions if they are installed
pcall(require('telescope').load_extension, 'fzf')
pcall(require('telescope').load_extension, 'ui-select')
require('telescope').load_extension 'file_browser'

-- See `:help telescope.builtin`
local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
vim.keymap.set('n', ';f', builtin.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
vim.keymap.set('n', '\\\\', builtin.buffers, { desc = '[ ] Find existing buffers' })

-- Customer mapping functions
vim.keymap.set('n', ';g', function()
  builtin.grep_string { shorten_path = true, word_match = '-w', only_sort_text = true, search = '' }
end, { desc = 'Fuzzy [S]earch by [G]rep' })

vim.keymap.set('n', '<leader>/', function()
  builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>s/', function()
  builtin.live_grep {
    grep_open_files = true,
    prompt_title = 'Live Grep in Open Files',
  }
end, { desc = '[S]earch [/] in Open Files' })

-- Shortcut for searching your Neovim configuration files
vim.keymap.set('n', '<leader>sn', function()
  builtin.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = '[S]earch [N]eovim files' })

vim.keymap.set('n', 'sf', function()
  require('telescope').extensions.file_browser.file_browser()
end)
