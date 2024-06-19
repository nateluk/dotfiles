return {
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
  'tpope/vim-surround',

  -- Editing tools
  'github/copilot.vim',
}
