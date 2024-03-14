-- luacheck: globals vim

local hi = vim.api.nvim_set_hl

local color_map = {
  Boolean = { fg = "#ae81ff" },
  Character = { fg = "#e6db74" },
  Number = { fg = "#ae81ff" },
  String = { fg = "#e6db74" },
  Conditional = { fg = "#f92672", bold = 1 },
  Constant = { fg = "#ae81ff", bold = 1 },
  Cursor = { fg = "#000000", bg = "#f8f8f0" },
  iCursor = { fg = "#000000", bg = "#f8f8f0" },
  Debug = { fg = "#bca3a3", bold = 1 },
  Define = { fg = "#66d9ef" },
  Delimiter = { fg = "#8f8f8f" },

  -- Diff {{{
  DiffAdd = { fg = "#0dd0ff", bold = 1 },
  DiffChange = { fg = "#fd971f", bold = 1 },
  DiffDelete = { fg = "#ff5555", bold = 1 },
  DiffText = { bg = "#6c6765", italic = 1, bold = 1 },
  -- }}}

  Directory = { fg = "#a6e22e", bold = 1 },
  Error = { fg = "#960050", bg = "#1e0010" },
  ErrorMsg = { fg = "#f92672", bg = "#232526", bold = 1 },
  Exception = { fg = "#a6e22e", bold = 1 },
  Float = { fg = "#ae81ff" },
  FoldColumn = { fg = "#667477", bg = "#000000" },
  Folded = { fg = "#667477", bg = "#000000" },
  Function = { fg = "#a6e22e" },
  Identifier = { fg = "#fd971f" },
  Ignore = { fg = "#808080" },
  IncSearch = { fg = "#af0000", bold = 1 },

  Keyword = { fg = "#f92672", bold = 1 },
  Label = { fg = "#e6db74" },
  Macro = { fg = "#c4be89", italic = 1 },

  MatchParen = { fg = "#000000", bg = "#fd971f", bold = 1 },
  ModeMsg = { fg = "#e6db74" },
  MoreMsg = { fg = "#e6db74" },
  Operator = { fg = "#f92672" },

  -- Completion menu {{{
  Pmenu = { fg = "#66d9ef" },
  PmenuSel = { bg = "#333333" },
  PmenuSbar = { bg = "#333333" },
  PmenuThumb = { fg = "#66d9ef" },
  -- }}}

  -- Marks {{{
  PreCondit = { fg = "#a6e22e", bold = 1 },
  PreProc = { fg = "#a6e22e" },
  Question = { fg = "#66d9ef" },
  Repeat = { fg = "#f92672", bold = 1 },
  -- Search = {fg="#fffffe", bg="#455354",},
  Search = { bg = "#ff4444", bold = 1 },
  -- ^ #005fd7 ?
  SignColumn = { fg = "#a6e22e" },
  SpecialChar = { fg = "#f92672", bold = 1 },
  SpecialComment = { fg = "#7e8e91", bold = 1 },
  Special = { fg = "#66d9ef", italic = 1 },

  SpellBad = { sp = "#ff4444", undercurl = 1 },
  SpellCap = { sp = "#7070f0", undercurl = 1 },
  SpellLocal = { sp = "#70f0f0", undercurl = 1 },
  SpellRare = { sp = "#bbbbbb", undercurl = 1 },
  -- }}}

  Statement = { fg = "#f92672", bold = 1 },
  StatusLine = { fg = "#455554", bg = "NONE" },
  StatusLineNC = { fg = "#808080", bg = "#080808" },
  StorageClass = { fg = "#fc971f", italic = 1 },
  Structure = { fg = "#66d9ef" },
  Tag = { fg = "#f92672", italic = 1 },
  Title = { fg = "#ef5939" },
  Todo =  vim.fn.hlexists("TodoBgTODO") and { link = 'TodoBgTODO', } or { fg = "#f8f8fe", bg = "#2288ee", bold = 1 },

  Typedef = { fg = "#66d9ef" },
  Type = { fg = "#66d9ef" },
  Underlined = { fg = "#808080", underline = 1 },

  VertSplit = { fg = "#808080", bg = "#080808", bold = 1 },
  VisualNOS = { bg = "#403d3d" },
  Visual = { bg = "#403d3d" },
  WarningMsg = { fg = "#ffffff", bg = "#333333", bold = 1 },
  WildMenu = { fg = "#66d9ef", bg = "#000000" },

  BufferCurrent = { bg = "#1b1d1e", fg = "#f8f8f2", bold = 1 },
  BufferVisible = { bg = "#1b1d1e", fg = "#808080", bold = 1, italic = 1 },
  BufferInactive = { bg = "#1b1d1e", fg = "#808080", },

  Conceal = { fg = "#ffaa00" },

  Normal = { fg = "#f8f8f2" },
  Comment = { fg = "#7e8e91" },
  CursorLine = { bg = "NONE" },
  CursorLineNr = { fg = "#fd971f" },
  CursorColumn = { bg = "#293739" },
  ColorColumn = { bg = "#232526" },
  LineNr = { fg = "#465457" },
  NonText = { fg = "#465457" },
  --	SpecialKey = {fg="#465457",},
  SpecialKey = { fg = "#66d9ef", italic = 1 },

  -- Diagnostic/LSP {{{
  DiagnosticError =  { fg = "#ee0000" },
  DiagnosticWarn =  { fg = "#eeee00" },
  DiagnosticInfo =  { fg = "#2288ee" },
  DiagnosticHint =  { fg = "#33dd99" },

  LSPErrorSign =  { link = "DiagnosticError" },
  LSPWarningSign =  { link = "DiagnosticWarn" },
  LSPInfoSign =  { link = "DiagnosticInfo" },
  LSPHintSign =  { link = "DiagnosticHint" },

-- FIXME (colored to crazy colors to see where they should be shown)
  LspReferenceText =  { bg = "#ff3fa0", fg = "#ff8030", bold = 1 },
  LspReferenceRead =  { bg = "#003fff", fg = "#8000ff", bold = 1 },
  LspReferenceWrite =  { bg = "#00ff00" },

  LSPUnderlineError =  { undercurl = 1, },
  LSPUnderlineWarning =  { undercurl = 1, },
  LSPUnderlineInformation =  { undercurl = 1, },
  LSPUnderlineHint =  { undercurl = 1, },

  LspDiagnosticsUnderlineError =  { link = "LSPUnderlineError", },
  LspDiagnosticsUnderlineWarning =  { link = "LSPUnderlineWarning", },
  LspDiagnosticsUnderlineInformation =  { link = "LSPUnderlineInformation", },
  LspDiagnosticsUnderlineHint =  { link = "LSPUnderlineHint", },

  DiagnosticUnderlineError =  { link = "LSPUnderlineError", },
  DiagnosticUnderlineWarning =  { link = "LSPUnderlineWarning", },
  DiagnosticUnderlineInformation =  { link = "LSPUnderlineInformation", },
  DiagnosticUnderlineHint =  { link = "LSPUnderlineHint", },

  LspDiagnosticsDefaultError =  { link = "LSPErrorSign", },
  LspDiagnosticsDefaultWarning =  { link = "LSPWarningSign", },
  LspDiagnosticsDefaultInformation =  { link = "LSPInfoSign", },
  LspDiagnosticsDefaultHint =  { link = "LSPHintSign", },

  DiagnosticDefaultError =  { link = "LSPErrorSign", },
  DiagnosticDefaultWarning =  { link = "LSPWarningSign", },
  DiagnosticDefaultInformation =  { link = "LSPInfoSign", },
  DiagnosticDefaultHint =  { link = "LSPHintSign", },

  LspDiagnosticsVirtualTextError =  { link = "LSPErrorSign", },
  LspDiagnosticsVirtualTextWarning =  { link = "LSPWarningSign", },
  LspDiagnosticsVirtualTextInformation =  { link = "LSPInfoSign", },
  LspDiagnosticsVirtualTextHint =  { link = "LSPHintSign", },

  DiagnosticVirtualTextError =  { link = "LSPErrorSign", },
  DiagnosticVirtualTextWarning =  { link = "LSPWarningSign", },
  DiagnosticVirtualTextInformation =  { link = "LSPInfoSign", },
  DiagnosticVirtualTextHint =  { link = "LSPHintSign", },

  LspDiagnosticsFloatingError =  { link = "LSPErrorSign", },
  LspDiagnosticsFloatingWarning =  { link = "LSPWarningSign", },
  LspDiagnosticsFloatingInformation =  { link = "LSPInfoSign", },
  LspDiagnosticsFloatingHint =  { link = "LSPHintSign", },

  LspDiagnosticsSignError =  { link = "LSPErrorSign", },
  LspDiagnosticsSignWarning =  { link = "LSPWarningSign", },
  LspDiagnosticsSignInformation =  { link = "LSPInfoSign", },
  LspDiagnosticsSignHint =  { link = "LSPHintSign", },

  DiagnosticSignError =  { link = "LSPErrorSign", },
  DiagnosticSignWarning =  { link = "LSPWarningSign", },
  DiagnosticSignWarn =  { link = "LSPWarningSign", },
  DiagnosticSignInformation =  { link = "LSPInfoSign", },
  DiagnosticSignInfo =  { link = "LSPInfoSign", },
  DiagnosticSignHint =  { link = "LSPHintSign", },
  -- /lsp }}}

  -- TreeSitter {{{
  -- Misc {{{
  ["@comment"] =  { link = 'Comment', },
  --   ["@error"] =  { link = 'Error', },
  ["@none"] =  { bg = 'NONE', fg = 'NONE', },
  ["@preproc"] =  { link = 'PreProc', },
  ["@define"] =  { link = 'Define', },
  ["@operator"] =  { link = 'Operator', },
  -- /misc }}}

  -- Punctuation {{{
  ["@punctuation.delimiter"] =  { link = 'Delimiter', },
  ["@punctuation.bracket"] =  { link = 'Delimiter', },
  ["@punctuation.special"] =  { link = 'Delimiter', },
  -- /punctuation }}}

  -- Literals {{{
  ["@string"] =  { link = 'String', },
  ["@string.regex"] =  { link = 'String', },
  ["@string.escape"] =  { link = 'SpecialChar', },
  ["@string.special"] =  { link = 'SpecialChar', },

  ["@character"] =  { link = 'Character', },
  ["@character.special"] =  { link = 'SpecialChar', },

  ["@boolean"] =  { link = 'Boolean', },
  ["@number"] =  { link = 'Number', },
  ["@float"] =  { link = 'Float', },
  -- /literals }}}

  -- Functions {{{
  ["@function"] =  { link = 'Function', },
  ["@function.call"] =  { link = 'Function', },
  ["@function.builtin"] =  { link = 'Special', },
  ["@function.macro"] =  { link = 'Macro', },

  ["@method"] =  { link = 'Function', },
  ["@method.call"] =  { link = 'Function', },

  ["@constructor"] =  { link = 'Special', },
  ["@parameter"] =  { link = 'Identifier', },
  -- /functions }}}

  -- Keywords {{{
  ["@keyword"] =  { link = 'Keyword', },
  ["@keyword.function"] =  { link = 'Keyword', },
  ["@keyword.operator"] =  { link = 'Keyword', },
  ["@keyword.return"] =  { link = 'Keyword', },

  ["@conditional"] =  { link = 'Conditional', },
  ["@repeat"] =  { link = 'Repeat', },
  ["@debug"] =  { link = 'Debug', },
  ["@label"] =  { link = 'Label', },
  ["@include"] =  { link = 'Include', },
  ["@exception"] =  { link = 'Exception', },
  -- /keywords }}}

  -- Types {{{
  ["@type"] =  { link = 'Type', },
  ["@type.builtin"] =  { link = 'Type', },
  ["@type.qualifier"] =  { link = 'Type', },
  ["@type.definition"] =  { link = 'Typedef', },

  ["@storageclass"] =  { link = 'StorageClass', },
  ["@attribute"] =  { link = 'PreProc', },
  ["@field"] =  { link = 'Identifier', },
  ["@property"] =  { link = 'Function', },
  -- /types }}}

  -- Identifiers {{{
  ["@variable"] =  { link = 'Function', },
  ["@variable.member"] =  { link = 'Identifier', },
  ["@variable.builtin"] =  { link = 'Special', },

  ["@constant"] =  { link = 'Constant', },
  ["@constant.builtin"] =  { link = 'Special', },
  ["@constant.macro"] =  { link = 'Define', },

  ["@namespace"] =  { link = 'Include', },
  ["@symbol"] =  { link = 'Identifier', },
  -- /identifiers }}}

  -- Text {{{
  ["@text"] =  { link = 'Normal', },
  ["@text.strong"] =  { bold = true, },
  ["@text.emphasis"] =  { italic = true, },
  ["@text.underline"] =  { underline = true, },
  ["@text.strike"] =  { strikethrough = true, },
  ["@text.title"] =  { link = 'Title', },
  ["@text.literal"] =  { link = 'String', },
  ["@text.uri"] =  { link = 'Underlined', },
  ["@text.math"] =  { link = 'Special', },
  ["@text.environment"] =  { link = 'Macro', },
  ["@text.environment.name"] =  { link = 'Type', },
  ["@text.reference"] =  { link = 'Constant', },
  -- /text }}}

  -- Tags {{{
  ["@tag"] =  { link = 'Tag', },
  ["@tag.attribute"] =  { link = 'Identifier', },
  ["@tag.delimiter"] =  { link = 'Delimiter', },
  -- /tags }}}

  -- integration with TodoComments {{{
  ["@text.todo"] =  { link = 'TodoBgTODO', },
  ["@text.note"] =  { link = 'TodoBgNOTE', },
  ["@text.warning"] =  { link = 'TodoBgHACK', },
  ["@text.danger"] =  { link = 'TodoBgFIX', },
--   ["@text.todo"] =  { link = 'Todo', },
--   ["@text.note"] =  { link = 'SpecialComment', },
--   ["@text.warning"] =  { link = 'WarningMsg', },
--   ["@text.danger"] =  { link = 'ErrorMsg', },
  -- /todo }}}
  -- /ts }}}
}

for k, v in pairs(color_map) do
  hi(0, k, v)
end

vim.g.colormap = color_map -- so, mapping can be used by other plugins
