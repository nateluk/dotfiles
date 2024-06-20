local lsp_zero = require 'lsp-zero'

-- LSP setup
lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps { buffer = bufnr, preserve_mappings = false }
  vim.keymap.set('n', 'R', vim.lsp.buf.rename, { buffer = bufnr, desc = '[R]ename' })
  vim.keymap.set('n', '<leader>.', vim.lsp.buf.code_action, { buffer = bufnr, desc = 'Code Action' })
end)

-- diagnostic signs
lsp_zero.set_sign_icons {
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»',
}

require('mason').setup {}
require('mason-lspconfig').setup {
  ensure_installed = { 'tsserver' },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup {}
    end,

    lua_ls = function()
      local lua_opts = lsp_zero.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
  },
}

-- Autocomplete setup
local cmp = require 'cmp'
local cmp_action = lsp_zero.cmp_action()

-- this is the function that loads the extra snippets
-- from rafamadriz/friendly-snippets
require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup {
  sources = {
    { name = 'path' },
    { name = 'nvim_lsp' },
    { name = 'luasnip', keyword_length = 2 },
    { name = 'buffer', keyword_length = 3 },
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert {
    -- confirm completion item
    ['<Enter>'] = cmp.mapping.confirm { select = true },

    -- trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- scroll up and down the documentation window
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),

    -- luasnip_supertab
    -- ['<Tab>'] = cmp_action.luasnip_supertab(),
    ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
  },

  formatting = lsp_zero.cmp_format { details = true },
}
