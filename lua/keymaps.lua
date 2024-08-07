vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- For neovide to paste in insertmode
vim.keymap.set('i', 'D-v', '<C-\\><C-o>"+p', { noremap = true, silent = true })

-- New tab
vim.keymap.set('n', 'te', ':tabedit')

-- Save file
vim.keymap.set('n', '<C-s>', ':w<Return>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Split windows
vim.keymap.set('n', 'ss', ':split<Return>')
vim.keymap.set('n', 'sv', ':vsplit<Return>')

-- Move between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', 'q', '<cmd>q!<CR>', { desc = 'Close window' })

-- Move lines up/down
vim.keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv") -- Shift visual selected line down
vim.keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv") -- Shift visual selected line up

-- make ctrl+c the same as esc
vim.keymap.set('i', '<C-c>', '<Esc>')

-- Lazygit
vim.keymap.set('n', '<leader>lg', '<cmd>LazyGit<CR>', { desc = '[L]azy[G]it' })

-- Map a key combination to the Lua command in normal mode
vim.keymap.set('n', '<leader>of', function()
  vim.ui.open(vim.fn.expand '%')
end, { desc = 'Open file in browser' })
