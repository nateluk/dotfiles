return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      -- Customize or remove this keymap to your liking
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = 'Format buffer',
    },
  },
  -- Everything in opts will be passed to setup()
  opts = {
    -- Define your formatters
    formatters_by_ft = {
      lua = { 'stylua' },
      python = { 'isort', 'black' },
      javascript = { 'prettier' },
      typescript = { 'prettier' },
      html = { 'prettier' },
      css = { 'prettier' },
      markdown = { 'prettier' },
      -- bicep = {},
    },
    -- Set up format-on-save
    format_on_save = { timeout_ms = 500, lsp_format = 'fallback' },
    -- Customize formatters
    formatters = {
      prettier = {
        command = 'prettier',
        args = { '--write', '--print-width', '120', '$FILENAME' },
        stdin = false,
      },
    },
  },
}
