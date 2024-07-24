require('oil').setup {
  delete_to_trash = true,
  view_options = {
    sort = {
      { 'type', 'asc' },
    },
    show_hidden = true,
  },
  keymaps = {
    ['<C-l>'] = false,
    ['<C-h>'] = false,
    ['<C-s>'] = false,
    ['yp'] = {
      desc = 'Copy filepath to system clipboard',
      callback = function()
        require('oil.actions').copy_entry_path.callback()
        vim.fn.setreg('+', vim.fn.getreg(vim.v.register))
      end,
    },
  },
}
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
