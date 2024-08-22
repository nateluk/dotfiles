return {
  { 'EdenEast/nightfox.nvim' },
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  'folke/tokyonight.nvim',
  { 'rose-pine/neovim', name = 'rose-pine' }, -- Colorscheme
  'lewis6991/gitsigns.nvim',
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
      'MunifTanjim/nui.nvim',
    },
  },
  { 'stevearc/oil.nvim' }, -- File browser
  'stevearc/conform.nvim', -- Formatter

  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
      },
      { 'nvim-telescope/telescope-ui-select.nvim' },
      { 'nvim-tree/nvim-web-devicons' },
    },
  },

  -- LSP
  { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
  { 'williamboman/mason.nvim', config = true },
  { 'williamboman/mason-lspconfig.nvim' },
  { 'neovim/nvim-lspconfig' },
  { 'L3MON4D3/LuaSnip' },
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  { 'saadparwaiz1/cmp_luasnip' },
  { 'rafamadriz/friendly-snippets' },

  -- Editing tools
  'windwp/nvim-ts-autotag',
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
  },
  'github/copilot.vim',
  'tpope/vim-surround',
  'wellle/targets.vim', -- Target brackets in line rather than parent

  -- For jest tests
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
      'nvim-neotest/neotest-jest',
    },
  },

  -- Lazygit
  'kdheepak/lazygit.nvim',

  -- Utils
  {
    'karb94/neoscroll.nvim',
    config = function()
      require('neoscroll').setup {}
    end,
  },
  {
    'm4xshen/hardtime.nvim',
    dependencies = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' },
    opts = {},
  },
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
  },
  { 'nvim-pack/nvim-spectre', dependencies = { 'nvim-lua/plenary.nvim' } }, -- Global find and replace

  -- Lua specific
  {
    'folke/lazydev.nvim',
    ft = 'lua', -- only load on lua files
    opts = {
      library = {
        { path = 'luvit-meta/library', words = { 'vim%.uv' } },
      },
    },
  },
  { 'Bilal2453/luvit-meta', lazy = true }, -- optional `vim.uv` typings
}
