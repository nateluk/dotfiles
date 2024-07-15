local neotest = require 'neotest'
neotest.setup {
  adapters = {
    require 'neotest-jest' {
      jestCommand = 'npm test --',
      jestConfigFile = 'custom.jest.config.ts',
      env = { CI = true },
      cwd = function(path)
        return vim.fn.getcwd()
      end,
    },
  },
}
vim.keymap.set('n', '<leader>tr', neotest.run.run, { desc = 'Run nearest test' })
vim.keymap.set('n', '<leader>tt', function()
  neotest.run.run(vim.fn.expand '%')
end, { desc = 'Run current file' })
vim.keymap.set('n', '<leader>ts', function()
  neotest.summary.toggle()
end, { desc = 'Toggle test summary' })
vim.keymap.set('n', '<leader>tl', neotest.run.run_last, { desc = 'Run last test' })
vim.keymap.set('n', '<leader>tw', function()
  neotest.watch.toggle(vim.fn.expand '%')
end, { desc = 'Toggle watching current file' })
