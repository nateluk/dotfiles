require('conform').setup {
  formatters_by_ft = {
    lua = { 'stylua' },
    python = { 'isort', 'black' },
    javascript = { 'prettier' },
    typescript = { 'prettier' },
    html = { 'prettierd' },
    css = { 'prettier' },
    markdown = { 'prettier' },
    yaml = { 'prettier' },
  },
  formatters = {
    prettier = {
      command = 'prettier',
      args = { '--write', '--print-width', '120', '$FILENAME' },
      stdin = false,
    },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_format = 'fallback',
  },
}

vim.keymap.set('', '<leader>f', function()
  require('conform').format { async = true, lsp_format = 'fallback' }
end, { desc = 'Format buffer' })
