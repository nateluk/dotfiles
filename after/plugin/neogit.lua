local neogit = require 'neogit'
neogit.setup {}
vim.keymap.set('n', '<leader>gs', function()
  neogit.open { kind = 'vsplit' }
end, {
  desc = 'Open Neogit',
})
