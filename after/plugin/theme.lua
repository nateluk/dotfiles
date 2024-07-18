require('catppuccin').setup {
  flavour = 'mocha', -- latte, frappe, macchiato, mocha
  transparent_background = false, -- disables setting the background color.
  show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
  term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
  dim_inactive = {
    enabled = false, -- dims the background color of inactive window
    shade = 'dark',
    percentage = 0.15, -- percentage of the shade to apply to the inactive window
  },
  no_italic = false, -- Force no italic
  no_bold = false, -- Force no bold
  no_underline = false, -- Force no underline
  styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = { 'italic' }, -- Change the style of comments
    conditionals = { 'italic' },
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
    -- miscs = {}, -- Uncomment to turn off hard-coded styles
  },
  highlight_overrides = {},
  color_overrides = {
    mocha = {
      rosewater = '#efc9c2',
      flamingo = '#ebb2b2',
      pink = '#f2a7de',
      mauve = '#b889f4',
      red = '#ea7183',
      maroon = '#ea838c',
      peach = '#f39967',
      yellow = '#eaca89',
      green = '#96d382',
      teal = '#78cec1',
      sky = '#91d7e3',
      sapphire = '#68bae0',
      blue = '#739df2',
      lavender = '#a0a8f6',
      text = '#b5c1f1',
      subtext1 = '#a6b0d8',
      subtext0 = '#959ec2',
      overlay2 = '#848cad',
      overlay1 = '#717997',
      overlay0 = '#63677f',
      surface2 = '#505469',
      surface1 = '#3e4255',
      surface0 = '#2c2f40',
      base = '#0b0b12',
      mantle = '#141620',
      crust = '#0e0f16',
    },
  },
  custom_highlights = {},
  default_integrations = true,
  integrations = {
    telescope = {
      enabled = true,
      style = 'nvchad',
    },
    neotest = true,
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    treesitter = true,
    notify = true,
    noice = true,
  },
}

require('rose-pine').setup {
  variant = 'main', -- auto, main, moon, or dawn
  dim_inactive_windows = true,
  styles = {
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

require('kanagawa').setup {
  compile = false, -- enable compiling the colorscheme
  undercurl = true, -- enable undercurls
  commentStyle = { italic = true },
  functionStyle = {},
  keywordStyle = { italic = true },
  statementStyle = { bold = true },
  typeStyle = {},
  transparent = true, -- do not set background color
  dimInactive = true, -- dim inactive window `:h hl-NormalNC`
  terminalColors = true, -- define vim.g.terminal_color_{0,17}
  colors = { -- add/modify theme and palette colors
    palette = {},
    theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
  },
  overrides = function(colors)
    local theme = colors.theme
    return {
      TelescopeTitle = { fg = theme.ui.special, bold = true },
      TelescopePromptNormal = { bg = theme.ui.bg_p1 },
      TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
      TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
      TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
      TelescopePreviewNormal = { bg = theme.ui.bg_dim },
      TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
    }
  end,
  theme = 'wave', -- Load "wave" theme when 'background' option is not set
}
-- setup must be called before loading
-- vim.cmd 'colorscheme kanagawa'
-- vim.cmd.colorscheme 'catppuccin'
vim.cmd 'colorscheme rose-pine'
