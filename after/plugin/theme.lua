require('rose-pine').setup {
  variant = 'main', -- auto, main, moon, or dawn
  dim_inactive_windows = true,
  styles = {
    italic = false,
    transparency = false,
  },
  highlight_groups = {
    TelescopeBorder = { fg = 'overlay', bg = 'overlay' },
    TelescopeNormal = { fg = 'subtle', bg = 'overlay' },
    TelescopeSelection = { fg = 'text', bg = 'highlight_med' },
    TelescopeSelectionCaret = { fg = 'love', bg = 'highlight_med' },
    TelescopeMultiSelection = { fg = 'text', bg = 'highlight_high' },
    TelescopeTitle = { fg = 'base', bg = 'love' },
    TelescopePromptTitle = { fg = 'base', bg = 'pine' },
    TelescopePreviewTitle = { fg = 'base', bg = 'iris' },
    TelescopePromptNormal = { fg = 'text', bg = 'surface' },
    TelescopePromptBorder = { fg = 'surface', bg = 'surface' },
    ['@lsp.type.property.typescript'] = { fg = 'rose' },
  },
}
-- setup must be called before loading
vim.cmd 'colorscheme rose-pine'
