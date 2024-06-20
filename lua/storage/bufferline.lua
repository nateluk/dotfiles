return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        always_show_bufferline = true,
        dianostics = 'nvim_lsp',
        diagnostics_indicator = function(count, level)
          local icon = level:match 'error' and ' ' or ''
          return ' ' .. icon .. count
        end,
      },
      highlights = require('catppuccin.groups.integrations.bufferline').get(),
    }

    vim.keymap.set('n', 't', '<Cmd>BufferLineCycleNext<CR>', { desc = 'BufferLineCycleNext' })
    vim.keymap.set('n', 'T', '<Cmd>BufferLineCyclePrev<CR>', { desc = 'BufferLineCyclePrev' })
  end,
}
