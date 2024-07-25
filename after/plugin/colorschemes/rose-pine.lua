require('rose-pine').setup {
  variant = 'main', -- auto, main, moon, or dawn
  dim_inactive_windows = true,
  styles = {
    italic = false,
    transparency = true,
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
    TelescopePromptNormal = { fg = 'text', bg = 'overlay' },
    TelescopePromptBorder = { fg = 'overlay', bg = 'overlay' },
    ['@lsp.type.property.typescript'] = { fg = 'rose' },
  },
}
