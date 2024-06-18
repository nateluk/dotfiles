return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
      { 'williamboman/mason.nvim', config = true },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'neovim/nvim-lspconfig' },
    },

    config = function()
      local lsp_zero = require 'lsp-zero'

      lsp_zero.on_attach(function(client, bufnr)
        lsp_zero.default_keymaps { buffer = bufnr, preserve_mappings = false }
        vim.keymap.set('n', 'R', function()
          vim.lsp.buf.rename()
        end, { buffer = bufnr, desc = '[R]ename' })
      end)

      require('mason').setup {}
      require('mason-lspconfig').setup {
        ensure_installed = { 'tsserver' },
        handlers = {
          function(server_name)
            require('lspconfig')[server_name].setup {}
          end,
        },
      }
    end,
  },
}
