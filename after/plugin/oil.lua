require('oil').setup {
  delete_to_trash = true,
  view_options = {
    sort = {
      { 'type', 'asc' },
    },
    show_hidden = true,
  },
  keymaps = {
    ['<C-h>'] = false,
    ['<C-s'] = false,
  },
}
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
