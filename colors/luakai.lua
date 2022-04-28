-- luacheck: globals vim

local hi = vim.api.nvim_set_hl

hi(0, "Boolean", {fg="#AE81FF",})
hi(0, "Character", {fg="#E6DB74",})
hi(0, "Number", {fg="#AE81FF",})
hi(0, "String", {fg="#E6DB74",})
hi(0, "Conditional", {fg="#F92672", bold=1,})
hi(0, "Constant", {fg="#AE81FF", bold=1,})
hi(0, "Cursor", {fg="#000000", bg="#F8F8F0",})
hi(0, "iCursor", {fg="#000000", bg="#F8F8F0",})
hi(0, "Debug", {fg="#BCA3A3", bold=1,})
hi(0, "Define", {fg="#66D9EF",})
hi(0, "Delimiter", {fg="#8F8F8F",})

hi(0, "DiffAdd", {fg="#0044FF", bold=1,})
hi(0, "DiffChange", {fg="#FD971F", bold=1,})
hi(0, "DiffDelete", {fg="#FF0000", bold=1,})
hi(0, "DiffText", {bg="#4C4745", italic = 1,bold=1,})

hi(0, "Directory", {fg="#A6E22E", bold=1,})
hi(0, "Error", {fg="#960050", bg="#1E0010",})
hi(0, "ErrorMsg", {fg="#F92672", bg="#232526", bold=1,})
hi(0, "Exception", {fg="#A6E22E", bold=1,})
hi(0, "Float", {fg="#AE81FF",})
hi(0, "FoldColumn", {fg="#465457", bg="#000000",})
hi(0, "Folded", {fg="#465457", bg="#000000",})
hi(0, "Function", {fg="#A6E22E",})
hi(0, "Identifier", {fg="#FD971F",})
hi(0, "Ignore", {fg="#808080",})
hi(0, "IncSearch", {fg="#AF0000", bold=1,})

hi(0, "Keyword", {fg="#F92672", bold=1,})
hi(0, "Label", {fg="#E6DB74", })
hi(0, "Macro", {fg="#C4BE89", italic=1,})
hi(0, "SpecialKey", {fg="#66D9EF", italic=1,})

hi(0, "MatchParen", {fg="#000000", bg="#FD971F", bold=1,})
hi(0, "ModeMsg", {fg="#E6DB74",})
hi(0, "MoreMsg", {fg="#E6DB74",})
hi(0, "Operator", {fg="#F92672",})

-- complete menu
hi(0, "Pmenu", {fg="#66D9EF",})
hi(0, "PmenuSel", {bg="#808080",})
hi(0, "PmenuSbar", {bg="#080808",})
hi(0, "PmenuThumb", {fg="#66D9EF",})

hi(0, "PreCondit", {fg="#A6E22E", bold=1,})
hi(0, "PreProc", {fg="#A6E22E",})
hi(0, "Question", {fg="#66D9EF",})
hi(0, "Repeat", {fg="#F92672", bold=1,})
--hi(0, "Search", {fg="#FFFFFF", bg="#455354",})
hi(0, "Search", {bg="#AF0000", bold=1,})
-- ^ #005FD7 ?
-- marks
hi(0, "SignColumn", {fg="#A6E22E",})
hi(0, "SpecialChar", {fg="#F92672", bold=1,})
hi(0, "SpecialComment", {fg="#7E8E91", bold=1,})
hi(0, "Special", {fg="#66D9EF", italic=1,})
if vim.fn.has("spell") then
	hi(0, "SpellBad", {sp="#FF0000", undercurl=1,})
	hi(0, "SpellCap", {sp="#7070F0", undercurl=1,})
	hi(0, "SpellLocal", {sp="#70F0F0", undercurl=1,})
	hi(0, "SpellRare", {sp="#FFFFFF", undercurl=1,})
end
hi(0, "Statement", {fg="#F92672", bold=1,})
-- hi(0, "StatusLine", {fg="#455354", bg="fg",})
hi(0, "StatusLineNC", {fg="#808080", bg="#080808",})
hi(0, "StorageClass", {fg="#FD971F", italic=1,})
hi(0, "Structure", {fg="#66D9EF",})
hi(0, "Tag", {fg="#F92672", italic=1,})
hi(0, "Title", {fg="#ef5939",})
hi(0, "Todo", {fg="#FF0000", bg="#FFFF00", bold=1,})

hi(0, "Typedef", {fg="#66D9EF",})
hi(0, "Type", {fg="#66D9EF",})
hi(0, "Underlined", {fg="#808080", underline=1,})

hi(0, "VertSplit", {fg="#808080", bg="#080808", bold=1,})
hi(0, "VisualNOS", {bg="#403D3D",})
hi(0, "Visual", {bg="#403D3D",})
hi(0, "WarningMsg", {fg="#FFFFFF", bg="#333333", bold=1,})
hi(0, "WildMenu", {fg="#66D9EF", bg="#000000",})

hi(0, "BufferCurrent", {bg="#1B1D1E", fg="#F8F8F2", bold = 1,})
hi(0, "BufferVisible", {bg="#1B1D1E", fg="#808080", bold = 1, italic = 1,})
hi(0, "BufferInactive", {bg="#1B1D1E", fg="#808080",})

hi(0, "Conceal", {fg="#ffaa00",})

hi(0, "Normal", {fg="#F8F8F2",})
hi(0, "Comment", {fg="#7E8E91",})
-- hi(0, "CursorLine", {bg="bg",})
hi(0, "CursorLineNr", {fg="#FD971F",})
hi(0, "CursorColumn", {bg="#293739",})
hi(0, "ColorColumn", {bg="#232526",})
hi(0, "LineNr", {fg="#465457",})
hi(0, "NonText", {fg="#465457",})
hi(0, "SpecialKey", {fg="#465457",})

--
-- Support for 256-color terminal
--
--[[
if vim.go.t_Co and tonumber(vim.go.t_Co) > 255 then
	hi(0, "Normal", {ctermfg=252,})
	hi(0, "CursorLine", {cterm="none",})
	hi(0, "CursorLineNr", {ctermfg=208, cterm="none",})
	hi(0, "Boolean", {ctermfg=135,})
	hi(0, "Character", {ctermfg=144,})
	hi(0, "Number", {ctermfg=135,})
	hi(0, "String", {ctermfg=144,})
	hi(0, "Conditional", {ctermfg=161, cterm="bold",})
	hi(0, "Constant", {ctermfg=135, cterm="bold",})
	hi(0, "Cursor", {ctermfg=16, ctermbg=253,})
	hi(0, "Debug", {ctermfg=225, cterm="bold",})
	hi(0, "Define", {ctermfg=81,})
	hi(0, "Delimiter", {ctermfg=241,})

	hi(0, "DiffAdd", {ctermbg=24,})
	hi(0, "DiffChange", {ctermfg=181,})
	hi(0, "DiffDelete", {ctermfg=162, ctermbg=53,})
	hi(0, "DiffText", {ctermbg=102, cterm="bold",})

	hi(0, "Directory", {ctermfg=118, cterm="bold",})
	hi(0, "Error", {ctermfg=219, ctermbg=89,})
	hi(0, "ErrorMsg", {ctermfg=199, ctermbg=16, cterm="bold",})
	hi(0, "Exception", {ctermfg=118, cterm="bold",})
	hi(0, "Float", {ctermfg=135,})
	hi(0, "FoldColumn", {ctermfg=67, ctermbg=16,})
	hi(0, "Folded", {ctermfg=67, ctermbg=16,})
	hi(0, "Function", {ctermfg=118,})
	hi(0, "Identifier", {ctermfg=208, cterm="none",})
	hi(0, "Ignore", {ctermfg=244,})
	hi(0, "IncSearch", {ctermfg=196, ctermbg="none", cterm="bold",})

	hi(0, "keyword", {ctermfg=161, cterm="bold",})
	hi(0, "Label", {ctermfg=229, cterm="none",})
	hi(0, "Macro", {ctermfg=193,})
	hi(0, "SpecialKey", {ctermfg=81,})

	hi(0, "MatchParen", {ctermfg=16, ctermbg=208, cterm="bold",})
	hi(0, "ModeMsg", {ctermfg=229,})
	hi(0, "MoreMsg", {ctermfg=229,})
	hi(0, "Operator", {ctermfg=161,})

	-- complete menu
	hi(0, "Pmenu", {ctermfg=81, ctermbg=16,})
	hi(0, "PmenuSel", {ctermfg=81, ctermbg=244,})
	hi(0, "PmenuThumb", {ctermfg=81,})

	hi(0, "PreCondit", {ctermfg=118, cterm="bold",})
	hi(0, "PreProc", {ctermfg=118,})
	hi(0, "Question", {ctermfg=81,})
	hi(0, "Repeat", {ctermfg=161, cterm="bold",})
	hi(0, "Search", {ctermfg=253, ctermbg=196, cterm="bold",})

	-- marks column
	hi(0, "SignColumn", {ctermfg=118, ctermbg="none",})
	hi(0, "SpecialChar", {ctermfg=161, cterm="bold",})
	hi(0, "SpecialComment", {ctermfg=245, cterm="bold",})
	hi(0, "Special", {ctermfg=81, cterm="bold",})
	if vim.fn.has("spell") then
		hi(0, "SpellBad", {ctermbg=52,})
		hi(0, "SpellCap", {ctermbg=17,})
		hi(0, "SpellLocal", {ctermbg=17,})
		hi(0, "SpellRare", {ctermfg="none", ctermbg="none", cterm="reverse",})
	end
	hi(0, "Statement", {ctermfg=161, cterm="bold",})
	hi(0, "StatusLine", {ctermfg=238,})
	hi(0, "StatusLineNC", {ctermfg=244,})
	hi(0, "StorageClass", {ctermfg=208,})
	hi(0, "Structure", {ctermfg=81,})
	hi(0, "Tag", {ctermfg=161,})
	hi(0, "Title", {ctermfg=166,})
	hi(0, "Todo", {ctermfg=196, cterm="bold",})

	hi(0, "Typedef", {ctermfg=81,})
	hi(0, "Type", {ctermfg=81, cterm="none",})
	hi(0, "Underlined", {ctermfg=244, cterm="underline",})

	hi(0, "VertSplit", {ctermfg=244, cterm="bold",})
	hi(0, "WarningMsg", {ctermfg=231, cterm="bold",})
	hi(0, "WildMenu", {ctermfg=81, ctermbg=16,})

	hi(0, "Comment", {ctermfg=59,})
	hi(0, "LineNr", {ctermfg=250,})
	hi(0, "NonText", {ctermfg=59,})

	hi(0, "SpecialKey", {ctermfg=59,})

	hi(0, "Conceal", {ctermfg=220, ctermbg="none",})

	if 1 == vim.g.rehash256 then
		hi(0, "Normal", {ctermfg=252,})
		hi(0, "CursorLine", {cterm="none",})
		hi(0, "CursorLineNr", {ctermfg=208, cterm="none",})

		hi(0, "Boolean", {ctermfg=141,})
		hi(0, "Character", {ctermfg=222,})
		hi(0, "Number", {ctermfg=141,})
		hi(0, "String", {ctermfg=222,})
		hi(0, "Conditional", {ctermfg=197, cterm="bold",})
		hi(0, "Constant", {ctermfg=141, cterm="bold",})

		hi(0, "DiffDelete", {ctermfg=125,})

		hi(0, "Directory", {ctermfg=154, cterm="bold",})
		hi(0, "Error", {ctermfg=125,})
		hi(0, "Exception", {ctermfg=154, cterm="bold",})
		hi(0, "Float", {ctermfg=141,})
		hi(0, "Function", {ctermfg=154,})
		hi(0, "Identifier", {ctermfg=208,})

		hi(0, "Keyword", {ctermfg=197, cterm="bold",})
		hi(0, "Operator", {ctermfg=197,})
		hi(0, "PreCondit", {ctermfg=154, cterm="bold",})
		hi(0, "PreProc", {ctermfg=154,})
		hi(0, "Repeat", {ctermfg=197, cterm="bold",})

		hi(0, "Statement", {ctermfg=197, cterm="bold",})
		hi(0, "Tag", {ctermfg=197,})
		hi(0, "Title", {ctermfg=203,})

		hi(0, "Comment", {ctermfg=244,})
		hi(0, "LineNr", {ctermfg=239,})
		hi(0, "NonText", {ctermfg=239,})
		hi(0, "SpecialKey", {ctermfg=239,})
	end
end
--]]
