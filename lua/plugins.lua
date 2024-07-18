return {
  -- Neovim UI
  'lewis6991/gitsigns.nvim',
  { 'rose-pine/neovim', name = 'rose-pine' },
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
      'rcarriga/nvim-notify',
    },
  },
  -- File browser
  { 'stevearc/oil.nvim' },

  -- Formatter
  'stevearc/conform.nvim',

  -- Treesitter
  'nvim-treesitter/nvim-treesitter-context',
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
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  'windwp/nvim-ts-autotag',
  'numToStr/Comment.nvim',
  'f-person/git-blame.nvim',
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
  },
  { 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {} },
  'github/copilot.vim',
  'tpope/vim-surround',
  'wellle/targets.vim',

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
