vim.cmd.highlight 'clear'

if vim.fn.exists 'syntax_on' == 1 then
  vim.cmd.syntax 'reset'
end

vim.g.colors_name = 'tron-ares'
vim.o.termguicolors = true

local c = {
  bg = '#120607',
  bg_alt = '#1a0d0f',
  panel = '#201214',
  panel_alt = '#2a191b',
  fg = '#e8ded2',
  fg_dim = '#c7b8aa',
  muted = '#8f8179',
  red = '#ff6b5f',
  red_alt = '#d9574d',
  rose = '#d98ca3',
  rose_bright = '#f0a3b8',
  sage = '#9ccfa8',
  sage_bright = '#b4ddb9',
  plum = '#b88ad8',
  plum_soft = '#d0a6e8',
  copper = '#d9905f',
  steel = '#8a9390',
  yellow = '#f4d47c',
  orange = '#d9905f',
  amber = '#f2c166',
}

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

hl('Normal', { fg = c.fg, bg = 'NONE' })
hl('NormalNC', { fg = c.fg_dim, bg = 'NONE' })
hl('EndOfBuffer', { fg = '#1c2a31', bg = 'NONE' })
hl('SignColumn', { fg = c.muted, bg = 'NONE' })
hl('FoldColumn', { fg = c.muted, bg = 'NONE' })
hl('Cursor', { fg = c.bg, bg = c.amber })
hl('CursorLine', { bg = '#211113' })
hl('CursorColumn', { bg = '#261517' })
hl('CursorLineNr', { fg = c.amber, bold = true })
hl('LineNr', { fg = c.muted })
hl('ColorColumn', { bg = '#261517' })
hl('Visual', { bg = '#4a2630' })
hl('Search', { fg = c.bg, bg = c.amber })
hl('IncSearch', { fg = c.bg, bg = c.rose_bright })
hl('CurSearch', { fg = c.bg, bg = c.rose_bright, bold = true })
hl('MatchParen', { fg = c.amber, bg = '#382025', bold = true })

hl('Pmenu', { fg = c.fg, bg = c.panel })
hl('PmenuSel', { fg = '#fff7ec', bg = '#59313a', bold = true })
hl('PmenuSbar', { bg = '#2a181a' })
hl('PmenuThumb', { bg = c.amber })
hl('NormalFloat', { fg = c.fg, bg = c.panel })
hl('FloatBorder', { fg = c.rose, bg = c.panel })
hl('FloatTitle', { fg = c.amber, bg = c.panel, bold = true })
hl('WinSeparator', { fg = '#402629' })
hl('StatusLine', { fg = c.fg, bg = '#2a171a', bold = true })
hl('StatusLineNC', { fg = c.muted, bg = c.bg })
hl('TabLine', { fg = c.fg_dim, bg = c.bg })
hl('TabLineSel', { fg = c.amber, bg = '#2a171a', bold = true })
hl('TabLineFill', { bg = c.bg })

hl('Comment', { fg = c.steel, italic = true })
hl('Constant', { fg = c.fg })
hl('String', { fg = c.sage })
hl('Character', { fg = c.sage })
hl('Number', { fg = c.yellow })
hl('Boolean', { fg = c.copper })
hl('Float', { fg = c.yellow })
hl('Identifier', { fg = c.fg })
hl('Function', { fg = c.rose_bright })
hl('Statement', { fg = c.rose })
hl('Conditional', { fg = c.rose })
hl('Repeat', { fg = c.rose })
hl('Label', { fg = c.rose })
hl('Operator', { fg = c.amber })
hl('Keyword', { fg = c.rose })
hl('Exception', { fg = c.red })
hl('PreProc', { fg = c.plum })
hl('Include', { fg = c.plum })
hl('Define', { fg = c.plum })
hl('Macro', { fg = c.plum })
hl('Type', { fg = c.plum_soft })
hl('StorageClass', { fg = c.rose })
hl('Structure', { fg = c.plum_soft })
hl('Special', { fg = c.amber })
hl('Delimiter', { fg = c.fg_dim })
hl('Underlined', { fg = c.rose_bright, underline = true })
hl('Bold', { bold = true })
hl('Italic', { italic = true })

hl('DiagnosticError', { fg = c.red })
hl('DiagnosticWarn', { fg = c.yellow })
hl('DiagnosticInfo', { fg = c.sage_bright })
hl('DiagnosticHint', { fg = c.plum_soft })
hl('DiagnosticUnderlineError', { sp = c.red, undercurl = true })
hl('DiagnosticUnderlineWarn', { sp = c.yellow, undercurl = true })
hl('DiagnosticUnderlineInfo', { sp = c.sage_bright, undercurl = true })
hl('DiagnosticUnderlineHint', { sp = c.plum_soft, undercurl = true })

hl('DiffAdd', { fg = c.sage, bg = '#102318' })
hl('DiffChange', { fg = c.amber, bg = '#2a1f10' })
hl('DiffDelete', { fg = c.red, bg = '#2a0710' })
hl('DiffText', { fg = c.amber, bg = '#3a2913' })
hl('GitSignsAdd', { fg = c.sage })
hl('GitSignsChange', { fg = c.amber })
hl('GitSignsDelete', { fg = c.red })

hl('TelescopeNormal', { fg = c.fg, bg = c.panel })
hl('TelescopeBorder', { fg = c.rose, bg = c.panel })
hl('TelescopePromptNormal', { fg = c.fg, bg = '#2a171a' })
hl('TelescopePromptBorder', { fg = c.amber, bg = '#2a171a' })
hl('TelescopePromptTitle', { fg = c.bg, bg = c.amber, bold = true })
hl('TelescopeSelection', { fg = '#fff7ec', bg = '#59313a', bold = true })
hl('TelescopeSelectionCaret', { fg = c.amber, bg = '#59313a', bold = true })
hl('TelescopeMatching', { fg = c.amber, bold = true })

hl('NeoTreeNormal', { fg = c.fg_dim, bg = '#170b0d' })
hl('NeoTreeNormalNC', { fg = c.fg_dim, bg = '#170b0d' })
hl('NeoTreeCursorLine', { bg = '#2b191c' })
hl('NeoTreeDirectoryIcon', { fg = c.rose_bright })
hl('NeoTreeDirectoryName', { fg = c.fg, bold = true })
hl('NeoTreeFileName', { fg = c.fg_dim })
hl('NeoTreeFileNameOpened', { fg = c.fg, bold = true })
hl('NeoTreeRootName', { fg = c.fg, bold = true })
hl('NeoTreeIndentMarker', { fg = '#463035' })
hl('NeoTreeExpander', { fg = c.muted })
hl('NeoTreeDotfile', { fg = c.muted })
hl('NeoTreeGitAdded', { fg = c.sage })
hl('NeoTreeGitModified', { fg = c.amber })
hl('NeoTreeGitDeleted', { fg = c.red })
hl('NeoTreeGitUntracked', { fg = c.plum })
hl('NeoTreeGitIgnored', { fg = c.muted, italic = true })
hl('NeoTreeGitConflict', { fg = c.red, bold = true })
hl('WhichKey', { fg = c.fg })
hl('WhichKeyGroup', { fg = c.rose })
hl('WhichKeyDesc', { fg = c.fg })
hl('WhichKeyFloat', { bg = c.panel })
hl('MiniStatuslineModeNormal', { fg = c.bg, bg = c.amber, bold = true })
hl('MiniStatuslineModeInsert', { fg = c.bg, bg = c.sage_bright, bold = true })
hl('MiniStatuslineModeVisual', { fg = c.bg, bg = c.rose_bright, bold = true })
hl('MiniStatuslineModeReplace', { fg = c.bg, bg = c.copper, bold = true })
hl('MiniStatuslineModeCommand', { fg = c.bg, bg = c.plum_soft, bold = true })

hl('@variable', { fg = c.fg })
hl('@variable.builtin', { fg = c.rose_bright })
hl('@constant', { fg = c.copper })
hl('@constant.builtin', { fg = c.yellow })
hl('@string', { fg = c.sage })
hl('@number', { fg = c.yellow })
hl('@boolean', { fg = c.copper })
hl('@function', { fg = c.rose_bright })
hl('@function.builtin', { fg = c.amber })
hl('@constructor', { fg = c.plum_soft })
hl('@keyword', { fg = c.rose })
hl('@keyword.function', { fg = c.rose })
hl('@keyword.operator', { fg = c.rose })
hl('@operator', { fg = c.amber })
hl('@type', { fg = c.plum_soft })
hl('@property', { fg = c.fg_dim })
hl('@punctuation.delimiter', { fg = c.fg_dim })
hl('@punctuation.bracket', { fg = c.fg_dim })
hl('@comment', { fg = c.steel, italic = true })

vim.g.terminal_color_0 = '#030405'
vim.g.terminal_color_1 = c.red_alt
vim.g.terminal_color_2 = c.sage
vim.g.terminal_color_3 = c.copper
vim.g.terminal_color_4 = c.plum
vim.g.terminal_color_5 = c.rose
vim.g.terminal_color_6 = c.amber
vim.g.terminal_color_7 = c.fg_dim
vim.g.terminal_color_8 = '#48515a'
vim.g.terminal_color_9 = c.red
vim.g.terminal_color_10 = c.sage_bright
vim.g.terminal_color_11 = c.yellow
vim.g.terminal_color_12 = c.plum_soft
vim.g.terminal_color_13 = c.rose_bright
vim.g.terminal_color_14 = c.amber
vim.g.terminal_color_15 = c.fg
