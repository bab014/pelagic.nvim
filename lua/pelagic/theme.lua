local pelagic = require("pelagic.colors")

local theme = {}

local italic = vim.g.pelagic_italic == false and pelagic.none or "italic"
local italic_undercurl = vim.g.pelagic_italic == false and "undercurl" or "italic,undercurl"
local bold = vim.g.pelagic_bold == false and pelagic.none or "bold"
local reverse_bold = vim.g.pelagic_bold == false and "reverse" or "reverse,bold"
local bold_underline = vim.g.pelagic_bold == false and "underline" or "bold,underline"
local bold_italic;
if vim.g.pelagic_bold == false then
	bold_italic = vim.g.pelagic_italic == false and pelagic.none or "italic"
elseif vim.g.pelagic_italic == false then
	bold_italic = "bold"
else
	bold_italic = "bold,italic"
end

theme.loadSyntax = function()
	-- Syntax highlight groups
	return {
		Type = { fg = pelagic.pelagic9_gui }, -- int, long, char, etc.
		StorageClass = { fg = pelagic.pelagic9_gui }, -- static, register, volatile, etc.
		Structure = { fg = pelagic.pelagic9_gui }, -- struct, union, enum, etc.
		Constant = { fg = pelagic.pelagic4_gui }, -- any constant
		Character = { fg = pelagic.pelagic14_gui }, -- any character constant: 'c', '\n'
		Number = { fg = pelagic.pelagic15_gui }, -- a number constant: 5
		Boolean = { fg = pelagic.pelagic9_gui }, -- a boolean constant: TRUE, false
		Float = { fg = pelagic.pelagic15_gui }, -- a floating point constant: 2.3e10
		Statement = { fg = pelagic.pelagic9_gui }, -- any statement
		Label = { fg = pelagic.pelagic9_gui }, -- case, default, etc.
		Operator = { fg = pelagic.pelagic9_gui }, -- sizeof", "+", "*", etc.
		Exception = { fg = pelagic.pelagic9_gui }, -- try, catch, throw
		PreProc = { fg = pelagic.pelagic9_gui }, -- generic Preprocessor
		Include = { fg = pelagic.pelagic9_gui }, -- preprocessor #include
		Define = { fg = pelagic.pelagic9_gui }, -- preprocessor #define
		Macro = { fg = pelagic.pelagic9_gui }, -- same as Define
		Typedef = { fg = pelagic.pelagic9_gui }, -- A typedef
		PreCondit = { fg = pelagic.pelagic13_gui }, -- preprocessor #if, #else, #endif, etc.
		Special = { fg = pelagic.pelagic4_gui }, -- any special symbol
		SpecialChar = { fg = pelagic.pelagic13_gui }, -- special character in a constant
		Tag = { fg = pelagic.pelagic4_gui }, -- you can use CTRL-] on this
		Delimiter = { fg = pelagic.pelagic6_gui }, -- character that needs attention like , or .
		SpecialComment = { fg = pelagic.pelagic8_gui }, -- special things inside a comment
		Debug = { fg = pelagic.pelagic11_gui }, -- debugging statements
		Underlined = { fg = pelagic.pelagic14_gui, bg = pelagic.none, style = "underline" }, -- text that stands out, HTML links
		Ignore = { fg = pelagic.pelagic1_gui }, -- left blank, hidden
		Todo = { fg = pelagic.pelagic13_gui, bg = pelagic.none, style = bold_italic }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		Conceal = { fg = pelagic.none, bg = pelagic.pelagic0_gui },
		htmlLink = { fg = pelagic.pelagic14_gui, style = "underline" },
		markdownH1Delimiter = { fg = pelagic.pelagic8_gui },
		markdownH2Delimiter = { fg = pelagic.pelagic11_gui },
		markdownH3Delimiter = { fg = pelagic.pelagic14_gui },
		htmlH1 = { fg = pelagic.pelagic8_gui, style = bold },
		htmlH2 = { fg = pelagic.pelagic11_gui, style = bold },
		htmlH3 = { fg = pelagic.pelagic14_gui, style = bold },
		htmlH4 = { fg = pelagic.pelagic15_gui, style = bold },
		htmlH5 = { fg = pelagic.pelagic9_gui, style = bold },
		markdownH1 = { fg = pelagic.pelagic8_gui, style = bold },
		markdownH2 = { fg = pelagic.pelagic11_gui, style = bold },
		markdownH3 = { fg = pelagic.pelagic14_gui, style = bold },
		Error = { fg = pelagic.pelagic11_gui, bg = pelagic.none, style = bold_underline }, -- any erroneous construct with bold
		Comment = { fg = pelagic.pelagic3_gui_bright, style = italic }, -- italic comments
		Conditional = { fg = pelagic.pelagic9_gui, style = italic }, -- italic if, then, else, endif, switch, etc.
		Function = { fg = pelagic.pelagic8_gui, style = italic }, -- italic funtion names
		Identifier = { fg = pelagic.pelagic9_gui, style = italic }, -- any variable name
		Keyword = { fg = pelagic.pelagic9_gui, style = italic }, -- italic for, do, while, etc.
		Repeat = { fg = pelagic.pelagic9_gui, style = italic }, -- italic any other keyword
		String = { fg = pelagic.pelagic14_gui, style = italic }, -- any string
	}
end

theme.loadEditor = function()
	-- Editor highlight groups

	local editor = {
		NormalFloat = { fg = pelagic.pelagic4_gui, bg = pelagic.float }, -- normal text and background color
		FloatBorder = { fg = pelagic.pelagic4_gui, bg = pelagic.float }, -- normal text and background color
		ColorColumn = { fg = pelagic.none, bg = pelagic.pelagic1_gui }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = pelagic.pelagic1_gui }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = pelagic.pelagic4_gui, bg = pelagic.none, style = "reverse" }, -- the character under the cursor
		CursorIM = { fg = pelagic.pelagic5_gui, bg = pelagic.none, style = "reverse" }, -- like Cursor, but used when in IME mode
		Directory = { fg = pelagic.pelagic7_gui, bg = pelagic.none }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = pelagic.pelagic1_gui },
		ErrorMsg = { fg = pelagic.none },
		Folded = { fg = pelagic.pelagic3_gui_bright, bg = pelagic.none, style = italic },
		FoldColumn = { fg = pelagic.pelagic7_gui },
		IncSearch = { fg = pelagic.pelagic6_gui, bg = pelagic.pelagic10_gui },
		LineNr = { fg = pelagic.pelagic3_gui_bright },
		CursorLineNr = { fg = pelagic.pelagic4_gui },
		MatchParen = { fg = pelagic.pelagic15_gui, bg = pelagic.none, style = bold },
		ModeMsg = { fg = pelagic.pelagic4_gui },
		MoreMsg = { fg = pelagic.pelagic4_gui },
		NonText = { fg = pelagic.pelagic1_gui },
		Pmenu = { fg = pelagic.pelagic4_gui, bg = pelagic.pelagic2_gui },
		PmenuSel = { fg = pelagic.pelagic4_gui, bg = pelagic.pelagic10_gui },
		PmenuSbar = { fg = pelagic.pelagic4_gui, bg = pelagic.pelagic2_gui },
		PmenuThumb = { fg = pelagic.pelagic4_gui, bg = pelagic.pelagic4_gui },
		Question = { fg = pelagic.pelagic14_gui },
		QuickFixLine = { fg = pelagic.pelagic4_gui, bg = pelagic.none, style = "reverse" },
		qfLineNr = { fg = pelagic.pelagic4_gui, bg = pelagic.none, style = "reverse" },
		Search = { fg = pelagic.pelagic6_gui, bg = pelagic.pelagic10_gui },
		Substitute = { fg = pelagic.pelagic0_gui, bg = pelagic.pelagic12_gui },
		SpecialKey = { fg = pelagic.pelagic9_gui },
		SpellBad = { fg = pelagic.pelagic11_gui, bg = pelagic.none, style = italic_undercurl },
		SpellCap = { fg = pelagic.pelagic7_gui, bg = pelagic.none, style = italic_undercurl },
		SpellLocal = { fg = pelagic.pelagic8_gui, bg = pelagic.none, style = italic_undercurl },
		SpellRare = { fg = pelagic.pelagic9_gui, bg = pelagic.none, style = italic_undercurl },
		StatusLine = { fg = pelagic.pelagic4_gui, bg = pelagic.pelagic2_gui },
		StatusLineNC = { fg = pelagic.pelagic4_gui, bg = pelagic.pelagic1_gui },
		StatusLineTerm = { fg = pelagic.pelagic4_gui, bg = pelagic.pelagic2_gui },
		StatusLineTermNC = { fg = pelagic.pelagic4_gui, bg = pelagic.pelagic1_gui },
		TabLineFill = { fg = pelagic.pelagic4_gui, bg = pelagic.none },
		TablineSel = { fg = pelagic.pelagic1_gui, bg = pelagic.pelagic9_gui },
		Tabline = { fg = pelagic.pelagic4_gui, bg = pelagic.pelagic1_gui },
		Title = { fg = pelagic.pelagic14_gui, bg = pelagic.none, style = bold },
		Visual = { fg = pelagic.none, bg = pelagic.pelagic2_gui },
		VisualNOS = { fg = pelagic.none, bg = pelagic.pelagic2_gui },
		WarningMsg = { fg = pelagic.pelagic15_gui },
		WildMenu = { fg = pelagic.pelagic12_gui, bg = pelagic.none, style = bold },
		CursorColumn = { fg = pelagic.none, bg = pelagic.cursorlinefg },
		CursorLine = { fg = pelagic.none, bg = pelagic.cursorlinefg },
		ToolbarLine = { fg = pelagic.pelagic4_gui, bg = pelagic.pelagic1_gui },
		ToolbarButton = { fg = pelagic.pelagic4_gui, bg = pelagic.none, style = bold },
		NormalMode = { fg = pelagic.pelagic4_gui, bg = pelagic.none, style = "reverse" },
		InsertMode = { fg = pelagic.pelagic14_gui, bg = pelagic.none, style = "reverse" },
		ReplacelMode = { fg = pelagic.pelagic11_gui, bg = pelagic.none, style = "reverse" },
		VisualMode = { fg = pelagic.pelagic9_gui, bg = pelagic.none, style = "reverse" },
		CommandMode = { fg = pelagic.pelagic4_gui, bg = pelagic.none, style = "reverse" },
		Warnings = { fg = pelagic.pelagic15_gui },

		healthError = { fg = pelagic.pelagic11_gui },
		healthSuccess = { fg = pelagic.pelagic14_gui },
		healthWarning = { fg = pelagic.pelagic15_gui },

		-- dashboard
		DashboardShortCut = { fg = pelagic.pelagic7_gui },
		DashboardHeader = { fg = pelagic.pelagic9_gui },
		DashboardCenter = { fg = pelagic.pelagic8_gui },
		DashboardFooter = { fg = pelagic.pelagic14_gui, style = italic },

		-- Barbar
		BufferTabpageFill = { bg = pelagic.pelagic0_gui },

		BufferCurrent = { bg = pelagic.pelagic1_gui },
		BufferCurrentMod = { bg = pelagic.pelagic1_gui, fg = pelagic.pelagic15_gui },
		BufferCurrentIcon = { bg = pelagic.pelagic1_gui },
		BufferCurrentSign = { bg = pelagic.pelagic1_gui },
		BufferCurrentIndex = { bg = pelagic.pelagic1_gui },
		BufferCurrentTarget = { bg = pelagic.pelagic1_gui, fg = pelagic.pelagic11_gui },

		BufferInactive = { bg = pelagic.pelagic0_gui, fg = pelagic.pelagic3_gui },
		BufferInactiveMod = { bg = pelagic.pelagic0_gui, fg = pelagic.pelagic15_gui },
		BufferInactiveIcon = { bg = pelagic.pelagic0_gui, fg = pelagic.pelagic3_gui },
		BufferInactiveSign = { bg = pelagic.pelagic0_gui, fg = pelagic.pelagic3_gui },
		BufferInactiveIndex = { bg = pelagic.pelagic0_gui, fg = pelagic.pelagic3_gui },
		BufferInactiveTarget = { bg = pelagic.pelagic0_gui, fg = pelagic.pelagic11_gui },

		BufferVisible = { bg = pelagic.pelagic2_gui },
		BufferVisibleMod = { bg = pelagic.pelagic2_gui, fg = pelagic.pelagic15_gui },
		BufferVisibleIcon = { bg = pelagic.pelagic2_gui },
		BufferVisibleSign = { bg = pelagic.pelagic2_gui },
		BufferVisibleIndex = { bg = pelagic.pelagic2_gui },
		BufferVisibleTarget = { bg = pelagic.pelagic2_gui, fg = pelagic.pelagic11_gui },

		-- nvim-notify
		NotifyDEBUGBorder = { fg = pelagic.pelagic3_gui },
		NotifyDEBUGIcon = { fg = pelagic.pelagic3_gui },
		NotifyDEBUGTitle = { fg = pelagic.pelagic3_gui },
		NotifyERRORBorder = { fg = pelagic.pelagic11_gui },
		NotifyERRORIcon = { fg = pelagic.pelagic11_gui },
		NotifyERRORTitle = { fg = pelagic.pelagic11_gui },
		NotifyINFOBorder = { fg = pelagic.pelagic14_gui },
		NotifyINFOIcon = { fg = pelagic.pelagic14_gui },
		NotifyINFOTitle = { fg = pelagic.pelagic14_gui },
		NotifyTRACEBorder = { fg = pelagic.pelagic15_gui },
		NotifyTRACEIcon = { fg = pelagic.pelagic15_gui },
		NotifyTRACETitle = { fg = pelagic.pelagic15_gui },
		NotifyWARNBorder = { fg = pelagic.pelagic13_gui },
		NotifyWARNIcon = { fg = pelagic.pelagic13_gui },
		NotifyWARNTitle = { fg = pelagic.pelagic13_gui },

		-- leap.nvim
		LeapMatch = { style = "underline,nocombine", fg = pelagic.pelagic13_gui },
		LeapLabelPrimary = { style = "nocombine", fg = pelagic.pelagic0_gui, bg = pelagic.pelagic13_gui },
		LeapLabelSecondary = { style = "nocombine", fg = pelagic.pelagic0_gui, bg = pelagic.pelagic15_gui },
	}

	-- Options:

	--Set transparent background
	if vim.g.pelagic_disable_background then
		editor.Normal = { fg = pelagic.pelagic4_gui, bg = pelagic.none } -- normal text and background color
		editor.SignColumn = { fg = pelagic.pelagic4_gui, bg = pelagic.none }
	else
		editor.Normal = { fg = pelagic.pelagic4_gui, bg = pelagic.pelagic0_gui } -- normal text and background color
		editor.SignColumn = { fg = pelagic.pelagic4_gui, bg = pelagic.pelagic0_gui }
	end

	-- Remove window split borders
	if vim.g.pelagic_borders then
		editor.VertSplit = { fg = pelagic.pelagic2_gui }
	else
		editor.VertSplit = { fg = pelagic.pelagic0_gui }
	end

	if vim.g.pelagic_uniform_diff_background then
		editor.DiffAdd = { fg = pelagic.pelagic14_gui, bg = pelagic.pelagic1_gui } -- diff mode: Added line
		editor.DiffChange = { fg = pelagic.pelagic13_gui, bg = pelagic.pelagic1_gui } -- diff mode: Changed line
		editor.DiffDelete = { fg = pelagic.pelagic11_gui, bg = pelagic.pelagic1_gui } -- diff mode: Deleted line
		editor.DiffText = { fg = pelagic.pelagic15_gui, bg = pelagic.pelagic1_gui } -- diff mode: Changed text within a changed line
	else
		editor.DiffAdd = { fg = pelagic.pelagic14_gui, bg = pelagic.none, style = "reverse" } -- diff mode: Added line
		editor.DiffChange = { fg = pelagic.pelagic13_gui, bg = pelagic.none, style = "reverse" } -- diff mode: Changed line
		editor.DiffDelete = { fg = pelagic.pelagic11_gui, bg = pelagic.none, style = "reverse" } -- diff mode: Deleted line
		editor.DiffText = { fg = pelagic.pelagic15_gui, bg = pelagic.none, style = "reverse" } -- diff mode: Changed text within a changed line
	end

	return editor
end

theme.loadTerminal = function()
	vim.g.terminal_color_0 = pelagic.pelagic1_gui
	vim.g.terminal_color_1 = pelagic.pelagic11_gui
	vim.g.terminal_color_2 = pelagic.pelagic14_gui
	vim.g.terminal_color_3 = pelagic.pelagic13_gui
	vim.g.terminal_color_4 = pelagic.pelagic9_gui
	vim.g.terminal_color_5 = pelagic.pelagic15_gui
	vim.g.terminal_color_6 = pelagic.pelagic8_gui
	vim.g.terminal_color_7 = pelagic.pelagic5_gui
	vim.g.terminal_color_8 = pelagic.pelagic3_gui
	vim.g.terminal_color_9 = pelagic.pelagic11_gui
	vim.g.terminal_color_10 = pelagic.pelagic14_gui
	vim.g.terminal_color_11 = pelagic.pelagic13_gui
	vim.g.terminal_color_12 = pelagic.pelagic9_gui
	vim.g.terminal_color_13 = pelagic.pelagic15_gui
	vim.g.terminal_color_14 = pelagic.pelagic7_gui
	vim.g.terminal_color_15 = pelagic.pelagic6_gui
end

theme.loadTreeSitter = function()
	-- TreeSitter highlight groups

	local treesitter = {
		TSConstructor = { fg = pelagic.pelagic9_gui }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		TSConstant = { fg = pelagic.pelagic13_gui }, -- For constants
		TSFloat = { fg = pelagic.pelagic15_gui }, -- For floats
		TSNumber = { fg = pelagic.pelagic15_gui }, -- For all number
		TSAttribute = { fg = pelagic.pelagic15_gui }, -- (unstable) TODO: docs
		TSError = { fg = pelagic.pelagic11_gui }, -- For syntax/parser errors.
		TSException = { fg = pelagic.pelagic15_gui }, -- For exception related keywords.
		TSFuncMacro = { fg = pelagic.pelagic7_gui }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		TSInclude = { fg = pelagic.pelagic9_gui }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSLabel = { fg = pelagic.pelagic15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
		TSOperator = { fg = pelagic.pelagic9_gui }, -- For any operator: `+`, but also `->` and `*` in C.
		TSParameter = { fg = pelagic.pelagic10_gui }, -- For parameters of a function.
		TSParameterReference = { fg = pelagic.pelagic10_gui }, -- For references to parameters of a function.
		TSPunctDelimiter = { fg = pelagic.pelagic8_gui }, -- For delimiters ie: `.`
		TSPunctBracket = { fg = pelagic.pelagic8_gui }, -- For brackets and parens.
		TSPunctSpecial = { fg = pelagic.pelagic8_gui }, -- For special punctutation that does not fall in the catagories before.
		TSSymbol = { fg = pelagic.pelagic15_gui }, -- For identifiers referring to symbols or atoms.
		TSType = { fg = pelagic.pelagic9_gui }, -- For types.
		TSTypeBuiltin = { fg = pelagic.pelagic9_gui }, -- For builtin types.
		TSTag = { fg = pelagic.pelagic4_gui }, -- Tags like html tag names.
		TSTagDelimiter = { fg = pelagic.pelagic15_gui }, -- Tag delimiter like `<` `>` `/`
		TSText = { fg = pelagic.pelagic4_gui }, -- For strings considepelagic11_gui text in a markup language.
		TSTextReference = { fg = pelagic.pelagic15_gui }, -- FIXME
		TSEmphasis = { fg = pelagic.pelagic10_gui }, -- For text to be represented with emphasis.
		TSUnderline = { fg = pelagic.pelagic4_gui, bg = pelagic.none, style = "underline" }, -- For text to be represented with an underline.
		TSLiteral = { fg = pelagic.pelagic4_gui }, -- Literal text.
		TSURI = { fg = pelagic.pelagic14_gui }, -- Any URI like a link or email.
		TSAnnotation = { fg = pelagic.pelagic11_gui }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
		["@constructor"] = { fg = pelagic.pelagic9_gui },
		["@constant"] = { fg = pelagic.pelagic13_gui },
		["@float"] = { fg = pelagic.pelagic15_gui },
		["@number"] = { fg = pelagic.pelagic15_gui },
		["@attribute"] = { fg = pelagic.pelagic15_gui },
		["@error"] = { fg = pelagic.pelagic11_gui },
		["@exception"] = { fg = pelagic.pelagic15_gui },
		["@funtion.macro"] = { fg = pelagic.pelagic7_gui },
		["@include"] = { fg = pelagic.pelagic9_gui },
		["@label"] = { fg = pelagic.pelagic15_gui },
		["@operator"] = { fg = pelagic.pelagic9_gui },
		["@parameter"] = { fg = pelagic.pelagic10_gui },
		["@punctuation.delimiter"] = { fg = pelagic.pelagic8_gui },
		["@punctuation.bracket"] = { fg = pelagic.pelagic8_gui },
		["@punctuation.special"] = { fg = pelagic.pelagic8_gui },
		["@symbol"] = { fg = pelagic.pelagic15_gui },
		["@type"] = { fg = pelagic.pelagic9_gui },
		["@type.builtin"] = { fg = pelagic.pelagic9_gui },
		["@tag"] = { fg = pelagic.pelagic4_gui },
		["@tag.delimiter"] = { fg = pelagic.pelagic15_gui },
		["@text"] = { fg = pelagic.pelagic4_gui },
		["@text.reference"] = { fg = pelagic.pelagic15_gui, style = bold },
		["@text.emphasis"] = { fg = pelagic.pelagic10_gui, style = italic },
		["@text.underline"] = { fg = pelagic.pelagic4_gui, bg = pelagic.none, style = "underline" },
		["@text.literal"] = { fg = pelagic.pelagic4_gui },
		["@text.uri"] = { fg = pelagic.pelagic14_gui, style = "underline" },
		["@text.strike"] = { fg = pelagic.pelagic4_gui, style = "strikethrough" },
		["@text.math"] = { fg = pelagic.pelagic7_gui },

		-- @todo Missing highlights
		-- @function.call
		-- @method.call
		-- @type.qualifier
		-- @text.math (e.g. for LaTeX math environments)
		-- @text.environment (e.g. for text environments of markup languages)
		-- @text.environment.name (e.g. for the name/the string indicating the type of text environment)
		-- @text.note
		-- @text.warning
		-- @text.danger
		-- @tag.attribute
		-- @string.special
	}

	treesitter.TSVariableBuiltin = { fg = pelagic.pelagic4_gui, style = bold }
	treesitter.TSBoolean = { fg = pelagic.pelagic9_gui, style = bold }
	treesitter.TSConstBuiltin = { fg = pelagic.pelagic7_gui, style = bold }
	treesitter.TSConstMacro = { fg = pelagic.pelagic7_gui, style = bold }
	treesitter.TSVariable = { fg = pelagic.pelagic4_gui, style = bold }
	treesitter.TSTitle = { fg = pelagic.pelagic10_gui, bg = pelagic.none, style = bold }
	treesitter["@variable"] = { fg = pelagic.pelagic4_gui, style = bold }
	treesitter["@variable.builtin"] = { fg = pelagic.pelagic4_gui, style = bold }
	treesitter["@variable.global"] = { fg = pelagic.pelagic4_gui, style = bold }
	treesitter["@boolean"] = { fg = pelagic.pelagic9_gui, style = bold }
	treesitter["@constant.builtin"] = { fg = pelagic.pelagic7_gui, style = bold }
	treesitter["@constant.macro"] = { fg = pelagic.pelagic7_gui, style = bold }
	treesitter["@text.title"] = { fg = pelagic.pelagic10_gui, bg = pelagic.none, style = bold }
	treesitter["@text.strong"] = { fg = pelagic.pelagic10_gui, bg = pelagic.none, style = bold }
	-- Comments
	treesitter.TSComment = { fg = pelagic.pelagic3_gui_bright, style = italic }
	-- Conditionals
	treesitter.TSConditional = { fg = pelagic.pelagic9_gui, style = italic } -- For keywords related to conditionnals.
	-- Function names
	treesitter.TSFunction = { fg = pelagic.pelagic8_gui, style = italic } -- For fuction (calls and definitions).
	treesitter.TSMethod = { fg = pelagic.pelagic7_gui, style = italic } -- For method calls and definitions.
	treesitter.TSFuncBuiltin = { fg = pelagic.pelagic8_gui, style = italic }
	-- Namespaces and property accessors
	treesitter.TSNamespace = { fg = pelagic.pelagic4_gui, style = italic } -- For identifiers referring to modules and namespaces.
	treesitter.TSField = { fg = pelagic.pelagic4_gui, style = italic } -- For fields.
	treesitter.TSProperty = { fg = pelagic.pelagic10_gui, style = italic } -- Same as `TSField`, but when accessing, not declaring.
	-- Language keywords
	treesitter.TSKeyword = { fg = pelagic.pelagic9_gui, style = italic } -- For keywords that don't fall in other categories.
	treesitter.TSKeywordFunction = { fg = pelagic.pelagic8_gui, style = italic }
	treesitter.TSKeywordReturn = { fg = pelagic.pelagic8_gui, style = italic }
	treesitter.TSKeywordOperator = { fg = pelagic.pelagic8_gui, style = italic }
	treesitter.TSRepeat = { fg = pelagic.pelagic9_gui, style = italic } -- For keywords related to loops.
	-- Strings
	treesitter.TSString = { fg = pelagic.pelagic14_gui, style = italic } -- For strings.
	treesitter.TSStringRegex = { fg = pelagic.pelagic7_gui, style = italic } -- For regexes.
	treesitter.TSStringEscape = { fg = pelagic.pelagic15_gui, style = italic } -- For escape characters within a string.
	treesitter.TSCharacter = { fg = pelagic.pelagic14_gui, style = italic } -- For characters.

	treesitter["@comment"] = { fg = pelagic.pelagic3_gui_bright, style = italic }
	treesitter["@conditional"] = { fg = pelagic.pelagic9_gui, style = italic }
	treesitter["@function"] = { fg = pelagic.pelagic8_gui, style = italic }
	treesitter["@method"] = { fg = pelagic.pelagic8_gui, style = italic }
	treesitter["@function.builtin"] = { fg = pelagic.pelagic8_gui, style = italic }
	treesitter["@namespace"] = { fg = pelagic.pelagic4_gui, style = italic }
	treesitter["@field"] = { fg = pelagic.pelagic4_gui, style = italic }
	treesitter["@property"] = { fg = pelagic.pelagic10_gui, style = italic }
	treesitter["@keyword"] = { fg = pelagic.pelagic9_gui, style = italic }
	treesitter["@keyword.function"] = { fg = pelagic.pelagic8_gui, style = italic }
	treesitter["@keyword.return"] = { fg = pelagic.pelagic8_gui, style = italic }
	treesitter["@keyword.operator"] = { fg = pelagic.pelagic8_gui, style = italic }
	treesitter["@repeat"] = { fg = pelagic.pelagic9_gui, style = italic }
	treesitter["@string"] = { fg = pelagic.pelagic14_gui, style = italic }
	treesitter["@string.regex"] = { fg = pelagic.pelagic7_gui, style = italic }
	treesitter["@string.escape"] = { fg = pelagic.pelagic15_gui, style = italic }
	treesitter["@character"] = { fg = pelagic.pelagic14_gui, style = italic }

	return treesitter
end

theme.loadFiletypes = function()
	-- Filetype-specific highlight groups

	local ft = {
		-- yaml
		yamlBlockMappingKey = { fg = pelagic.pelagic7_gui },
		yamlBool = { link = "Boolean" },
		yamlDocumentStart = { link = "Keyword" },
		yamlTSField = { fg = pelagic.pelagic7_gui },
		yamlTSString = { fg = pelagic.pelagic4_gui },
		yamlTSPunctSpecial = { link = "Keyword" },
		yamlKey = { fg = pelagic.pelagic7_gui }, -- stephpy/vim-yaml
	}

	return ft
end

theme.loadLSP = function()
	-- Lsp highlight groups

	local lsp = {
		LspDiagnosticsDefaultError = { fg = pelagic.pelagic11_gui }, -- used for "Error" diagnostic virtual text
		LspDiagnosticsSignError = { fg = pelagic.pelagic11_gui }, -- used for "Error" diagnostic signs in sign column
		LspDiagnosticsFloatingError = { fg = pelagic.pelagic11_gui }, -- used for "Error" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextError = { fg = pelagic.pelagic11_gui }, -- Virtual text "Error"
		LspDiagnosticsUnderlineError = { style = "undercurl", sp = pelagic.pelagic11_gui }, -- used to underline "Error" diagnostics.
		LspDiagnosticsDefaultWarning = { fg = pelagic.pelagic15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsSignWarning = { fg = pelagic.pelagic15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsFloatingWarning = { fg = pelagic.pelagic15_gui }, -- used for "Warning" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextWarning = { fg = pelagic.pelagic15_gui }, -- Virtual text "Warning"
		LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = pelagic.pelagic15_gui }, -- used to underline "Warning" diagnostics.
		LspDiagnosticsDefaultInformation = { fg = pelagic.pelagic10_gui }, -- used for "Information" diagnostic virtual text
		LspDiagnosticsSignInformation = { fg = pelagic.pelagic10_gui }, -- used for "Information" diagnostic signs in sign column
		LspDiagnosticsFloatingInformation = { fg = pelagic.pelagic10_gui }, -- used for "Information" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextInformation = { fg = pelagic.pelagic10_gui }, -- Virtual text "Information"
		LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = pelagic.pelagic10_gui }, -- used to underline "Information" diagnostics.
		LspDiagnosticsDefaultHint = { fg = pelagic.pelagic9_gui }, -- used for "Hint" diagnostic virtual text
		LspDiagnosticsSignHint = { fg = pelagic.pelagic9_gui }, -- used for "Hint" diagnostic signs in sign column
		LspDiagnosticsFloatingHint = { fg = pelagic.pelagic9_gui }, -- used for "Hint" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextHint = { fg = pelagic.pelagic9_gui }, -- Virtual text "Hint"
		LspDiagnosticsUnderlineHint = { style = "undercurl", sp = pelagic.pelagic10_gui }, -- used to underline "Hint" diagnostics.
		LspReferenceText = { fg = pelagic.pelagic4_gui, bg = pelagic.pelagic1_gui }, -- used for highlighting "text" references
		LspReferenceRead = { fg = pelagic.pelagic4_gui, bg = pelagic.pelagic1_gui }, -- used for highlighting "read" references
		LspReferenceWrite = { fg = pelagic.pelagic4_gui, bg = pelagic.pelagic1_gui }, -- used for highlighting "write" references

		DiagnosticError = { link = "LspDiagnosticsDefaultError" },
		DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning" },
		DiagnosticInfo = { link = "LspDiagnosticsDefaultInformation" },
		DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
		DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning" },
		DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" },
		DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning" },
		DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning" },
		DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
		DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" },
		DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError" },
		DiagnosticSignError = { link = "LspDiagnosticsSignError" },
		DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation" },
		DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" },
		DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation" },
		DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation" },
		DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint" },
		DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint" },
		DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint" },
		DiagnosticSignHint = { link = "LspDiagnosticsSignHint" },
	}

	return lsp
end

theme.loadPlugins = function()
	-- Plugins highlight groups

	local plugins = {

		-- LspTrouble
		LspTroubleText = { fg = pelagic.pelagic4_gui },
		LspTroubleCount = { fg = pelagic.pelagic9_gui, bg = pelagic.pelagic10_gui },
		LspTroubleNormal = { fg = pelagic.pelagic4_gui, bg = pelagic.sidebar },

		-- Diff
		diffAdded = { fg = pelagic.pelagic14_gui },
		diffRemoved = { fg = pelagic.pelagic11_gui },
		diffChanged = { fg = pelagic.pelagic15_gui },
		diffOldFile = { fg = pelagic.yellow },
		diffNewFile = { fg = pelagic.pelagic12_gui },
		diffFile = { fg = pelagic.pelagic7_gui },
		diffLine = { fg = pelagic.pelagic3_gui },
		diffIndexLine = { fg = pelagic.pelagic9_gui },

		-- Neogit
		NeogitBranch = { fg = pelagic.pelagic10_gui },
		NeogitRemote = { fg = pelagic.pelagic9_gui },
		NeogitHunkHeader = { fg = pelagic.pelagic8_gui },
		NeogitHunkHeaderHighlight = { fg = pelagic.pelagic8_gui, bg = pelagic.pelagic1_gui },
		NeogitDiffContextHighlight = { bg = pelagic.pelagic1_gui },
		NeogitDiffDeleteHighlight = { fg = pelagic.pelagic11_gui, style = "reverse" },
		NeogitDiffAddHighlight = { fg = pelagic.pelagic14_gui, style = "reverse" },

		-- GitGutter
		GitGutterAdd = { fg = pelagic.pelagic14_gui }, -- diff mode: Added line |diff.txt|
		GitGutterChange = { fg = pelagic.pelagic13_gui }, -- diff mode: Changed line |diff.txt|
		GitGutterDelete = { fg = pelagic.pelagic11_gui }, -- diff mode: Deleted line |diff.txt|

		-- GitSigns
		GitSignsAdd = { fg = pelagic.pelagic14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddNr = { fg = pelagic.pelagic14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddLn = { fg = pelagic.pelagic14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = pelagic.pelagic13_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeNr = { fg = pelagic.pelagic13_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeLn = { fg = pelagic.pelagic13_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = pelagic.pelagic11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteNr = { fg = pelagic.pelagic11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteLn = { fg = pelagic.pelagic11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsCurrentLineBlame = { fg = pelagic.pelagic3_gui_bright, style = bold },

		-- Telescope
		TelescopePromptBorder = { fg = pelagic.pelagic4_gui },
		TelescopeResultsBorder = { fg = pelagic.pelagic4_gui },
		TelescopePreviewBorder = { fg = pelagic.pelagic4_gui },
		TelescopeSelectionCaret = { fg = pelagic.pelagic9_gui },
		TelescopeSelection = { fg = pelagic.pelagic6_gui, bg = pelagic.pelagic2_gui },
		TelescopeMatching = { link = 'Search' },

		-- NvimTree
		NvimTreeRootFolder = { fg = pelagic.pelagic15_gui },
		NvimTreeSymlink = { fg = pelagic.pelagic5_gui },
		NvimTreeFolderName = { fg = pelagic.pelagic4_gui },
		NvimTreeFolderIcon = { fg = pelagic.pelagic9_gui },
		NvimTreeEmptyFolderName = { fg = pelagic.pelagic4_gui },
		NvimTreeOpenedFolderName = { fg = pelagic.pelagic5_gui },
		NvimTreeExecFile = { fg = pelagic.pelagic4_gui },
		NvimTreeOpenedFile = { fg = pelagic.pelagic6_gui },
		NvimTreeSpecialFile = { fg = pelagic.pelagic4_gui, style = bold},
		NvimTreeImageFile = { fg = pelagic.pelagic4_gui },
		NvimTreeMarkdownFile = { fg = pelagic.pelagic4_gui },
		NvimTreeIndentMarker = { fg = pelagic.pelagic9_gui },
		NvimTreeGitDirty = { fg = pelagic.pelagic13_gui }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitStaged = { fg = pelagic.pelagic13_gui }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitMerge = { fg = pelagic.pelagic13_gui }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitRenamed = { fg = pelagic.pelagic13_gui }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitNew = { fg = pelagic.pelagic14_gui }, -- diff mode: Added line |diff.txt|
		NvimTreeGitDeleted = { fg = pelagic.pelagic11_gui },	-- diff mode: Deleted line |diff.txt|
		NvimTreeGitIgnored = { fg = pelagic.pelagic3_gui_bright },
		LspDiagnosticsError = { fg = pelagic.pelagic12_gui },
		LspDiagnosticsWarning = { fg = pelagic.pelagic15_gui },
		LspDiagnosticsInformation = { fg = pelagic.pelagic10_gui },
		LspDiagnosticsHint = { fg = pelagic.pelagic9_gui },

		-- WhichKey
		WhichKey = { fg = pelagic.pelagic8_gui, style = bold },
		WhichKeyGroup = { fg = pelagic.pelagic5_gui },
		WhichKeyDesc = { fg = pelagic.pelagic7_gui, style = italic },
		WhichKeySeperator = { fg = pelagic.pelagic9_gui },
		WhichKeyFloating = { bg = pelagic.pelagic1_gui },
		WhichKeyFloat = { bg = pelagic.pelagic1_gui },
		WhichKeyValue = { fg = pelagic.pelagic7_gui },

		-- LspSaga
		DiagnosticError = { fg = pelagic.pelagic12_gui },
		DiagnosticWarning = { fg = pelagic.pelagic15_gui },
		DiagnosticInformation = { fg = pelagic.pelagic10_gui },
		DiagnosticHint = { fg = pelagic.pelagic9_gui },
		DiagnosticTruncateLine = { fg = pelagic.pelagic4_gui },
		LspFloatWinBorder = { fg = pelagic.pelagic4_gui, bg = pelagic.float },
		LspSagaDefPreviewBorder = { fg = pelagic.pelagic4_gui, bg = pelagic.float },
		DefinitionIcon = { fg = pelagic.pelagic7_gui },
		TargetWord = { fg = pelagic.pelagic6_gui, style = 'bold' },
		-- LspSaga code action
		LspSagaCodeActionTitle = { link = 'Title' },
		LspSagaCodeActionBorder = { fg = pelagic.pelagic4_gui, bg = pelagic.float },
		LspSagaCodeActionTrunCateLine = { link = 'LspSagaCodeActionBorder' },
		LspSagaCodeActionContent = { fg = pelagic.pelagic4_gui },
		-- LspSag finder
		LspSagaLspFinderBorder = { fg = pelagic.pelagic4_gui, bg = pelagic.float },
		LspSagaAutoPreview = { fg = pelagic.pelagic4_gui },
		LspSagaFinderSelection = { fg = pelagic.pelagic6_gui, bg = pelagic.pelagic2_gui },
		TargetFileName = { fg = pelagic.pelagic4_gui },
		FinderParam = { fg = pelagic.pelagic15_gui, bold = true },
		FinderVirtText = { fg = pelagic.pelagic15_gui15 , bg = pelagic.none },
		DefinitionsIcon = { fg = pelagic.pelagic9_gui },
		Definitions = { fg = pelagic.pelagic15_gui, bold = true },
		DefinitionCount = { fg = pelagic.pelagic10_gui },
		ReferencesIcon = { fg = pelagic.pelagic9_gui },
		References = { fg = pelagic.pelagic15_gui, bold = true },
		ReferencesCount = { fg = pelagic.pelagic10_gui },
		ImplementsIcon = { fg = pelagic.pelagic9_gui },
		Implements = { fg = pelagic.pelagic15_gui, bold = true },
		ImplementsCount = { fg = pelagic.pelagic10_gui },
		-- LspSaga finder spinner
		FinderSpinnerBorder = { fg = pelagic.pelagic4_gui, bg = pelagic.float },
		FinderSpinnerTitle = { link = 'Title' },
		FinderSpinner = { fg = pelagic.pelagic8_gui, bold = true },
		FinderPreviewSearch = { link = 'Search' },
		-- LspSaga definition
		DefinitionBorder = { fg = pelagic.pelagic4_gui, bg = pelagic.float },
		DefinitionArrow = { fg = pelagic.pelagic8_gui },
		DefinitionSearch = { link = 'Search' },
		DefinitionFile = { fg = pelagic.pelagic4_gui, bg = pelagic.float },
		-- LspSaga hover
		LspSagaHoverBorder = { fg = pelagic.pelagic4_gui, bg = pelagic.float },
		LspSagaHoverTrunCateLine = { link = 'LspSagaHoverBorder' },
		-- Lsp rename
		LspSagaRenameBorder = { fg = pelagic.pelagic4_gui, bg = pelagic.float },
		LspSagaRenameMatch = { fg = pelagic.pelagic6_gui, bg = pelagic.pelagic9_gui },
		-- Lsp diagnostic
		LspSagaDiagnosticSource = { link = 'Comment' },
		LspSagaDiagnosticError = { link = 'DiagnosticError' },
		LspSagaDiagnosticWarn = { link = 'DiagnosticWarn' },
		LspSagaDiagnosticInfo = { link = 'DiagnosticInfo' },
		LspSagaDiagnosticHint = { link = 'DiagnosticHint' },
		LspSagaErrorTrunCateLine = { link = 'DiagnosticError' },
		LspSagaWarnTrunCateLine = { link = 'DiagnosticWarn' },
		LspSagaInfoTrunCateLine = { link = 'DiagnosticInfo' },
		LspSagaHintTrunCateLine = { link = 'DiagnosticHint' },
		LspSagaDiagnosticBorder = { fg = pelagic.pelagic4_gui, bg = pelagic.float },
		LspSagaDiagnosticHeader = { fg = pelagic.pelagic4_gui },
		DiagnosticQuickFix = { fg = pelagic.pelagic14_gui, bold = true },
		DiagnosticMap = { fg = pelagic.pelagic15_gui },
		DiagnosticLineCol = { fg = pelagic.pelagic4_gui },
		LspSagaDiagnosticTruncateLine = { link = 'LspSagaDiagnosticBorder' },
		ColInLineDiagnostic = { link = 'Comment' },
		-- LspSaga signture help
		LspSagaSignatureHelpBorder = { fg = pelagic.pelagic4_gui, bg = pelagic.float },
		LspSagaShTrunCateLine = { link = 'LspSagaSignatureHelpBorder' },
		-- Lspsaga lightbulb
		LspSagaLightBulb = { link = 'DiagnosticSignHint' },
		-- LspSaga shadow
		SagaShadow = { fg = 'black' },
		-- LspSaga float
		LspSagaBorderTitle = { link = 'Title' },
		-- LspSaga Outline
		LSOutlinePreviewBorder = { fg = pelagic.pelagic4_gui, bg = pelagic.float },
		OutlineIndentEvn = { fg = pelagic.pelagic15_gui },
		OutlineIndentOdd = { fg = pelagic.pelagic12_gui },
		OutlineFoldPrefix = { fg = pelagic.pelagic11_gui },
		OutlineDetail = { fg = pelagic.pelagic4_gui },
		-- LspSaga all floatwindow
		LspFloatWinNormal = { fg = pelagic.pelagic4_gui, bg = pelagic.float },
		-- Saga End

		-- Sneak
		Sneak = { fg = pelagic.pelagic0_gui, bg = pelagic.pelagic4_gui },
		SneakScope = { bg = pelagic.pelagic1_gui },

		-- Cmp
		CmpItemKind = { fg = pelagic.pelagic15_gui },
		CmpItemAbbrMatch = { fg = pelagic.pelagic5_gui, style = bold },
		CmpItemAbbrMatchFuzzy = { fg = pelagic.pelagic5_gui, style = bold },
		CmpItemAbbr = { fg = pelagic.pelagic4_gui },
		CmpItemMenu = { fg = pelagic.pelagic14_gui },

		-- Indent Blankline
		IndentBlanklineChar = { fg = pelagic.pelagic3_gui },
		IndentBlanklineContextChar = { fg = pelagic.pelagic10_gui },

		-- headline
		-- bg = (10 * pelagic0 + fg) / 11
		Headline1 = { fg = pelagic.pelagic12_gui, bg = "#3d3c44", bold = true },
		Headline2 = { fg = pelagic.pelagic13_gui, bg = "#3f4247", bold = true },
		Headline3 = { fg = pelagic.pelagic14_gui, bg = "#394147", bold = true },
		Headline4 = { fg = pelagic.pelagic9_gui, bg = "#363e4c", bold = true },
		Headline5 = { fg = pelagic.pelagic15_gui, bg = "#3a3c4a", bold = true },
		Headline6 = { fg = pelagic.pelagic4_gui, bg = "#3d434f", bold = true },

		Quote = { fg = pelagic.pelagic2_gui },
		CodeBlock = { bg = pelagic.pelagic1_gui },
		Dash = { pelagic.pelagic10_gui, bold = true },

		-- Illuminate
		illuminatedWord = { bg = pelagic.pelagic3_gui },
		illuminatedCurWord = { bg = pelagic.pelagic3_gui },
		IlluminatedWordText = { bg = pelagic.pelagic3_gui },
		IlluminatedWordRead = { bg = pelagic.pelagic3_gui },
		IlluminatedWordWrite = { bg = pelagic.pelagic3_gui },

		-- nvim-dap
		DapBreakpoint = { fg = pelagic.pelagic14_gui },
		DapStopped = { fg = pelagic.pelagic15_gui },

		-- nvim-dap-ui
		DapUIVariable = { fg = pelagic.pelagic4_gui },
		DapUIScope = { fg = pelagic.pelagic8_gui },
		DapUIType = { fg = pelagic.pelagic9_gui },
		DapUIValue = { fg = pelagic.pelagic4_gui },
		DapUIModifiedValue = { fg = pelagic.pelagic8_gui },
		DapUIDecoration = { fg = pelagic.pelagic8_gui },
		DapUIThread = { fg = pelagic.pelagic8_gui },
		DapUIStoppedThread = { fg = pelagic.pelagic8_gui },
		DapUIFrameName = { fg = pelagic.pelagic4_gui },
		DapUISource = { fg = pelagic.pelagic9_gui },
		DapUILineNumber = { fg = pelagic.pelagic8_gui },
		DapUIFloatBorder = { fg = pelagic.pelagic8_gui },
		DapUIWatchesEmpty = { fg = pelagic.pelagic11_gui },
		DapUIWatchesValue = { fg = pelagic.pelagic8_gui },
		DapUIWatchesError = { fg = pelagic.pelagic11_gui },
		DapUIBreakpointsPath = { fg = pelagic.pelagic8_gui },
		DapUIBreakpointsInfo = { fg = pelagic.pelagic8_gui },
		DapUIBreakpointsCurrentLine = { fg = pelagic.pelagic8_gui },
		DapUIBreakpointsLine = { fg = pelagic.pelagic8_gui },

		-- Hop
		HopNextKey = { fg = pelagic.pelagic4_gui, style = bold },
		HopNextKey1 = { fg = pelagic.pelagic8_gui, style = bold },
		HopNextKey2 = { fg = pelagic.pelagic4_gui },
		HopUnmatched = { fg = pelagic.pelagic3_gui },

		-- Fern
		FernBranchText = { fg = pelagic.pelagic3_gui_bright },

		-- nvim-ts-rainbow
		rainbowcol1 = { fg = pelagic.pelagic15_gui },
		rainbowcol2 = { fg = pelagic.pelagic13_gui },
		rainbowcol3 = { fg = pelagic.pelagic11_gui },
		rainbowcol4 = { fg = pelagic.pelagic7_gui },
		rainbowcol5 = { fg = pelagic.pelagic8_gui },
		rainbowcol6 = { fg = pelagic.pelagic15_gui },
		rainbowcol7 = { fg = pelagic.pelagic13_gui },

		-- lightspeed
		LightspeedLabel = { fg = pelagic.pelagic8_gui, style = bold },
		LightspeedLabelOverlapped = { fg = pelagic.pelagic8_gui, style = "bold,underline" },
		LightspeedLabelDistant = { fg = pelagic.pelagic15_gui, style = bold },
		LightspeedLabelDistantOverlapped = { fg = pelagic.pelagic15_gui, style = "bold,underline" },
		LightspeedShortcut = { fg = pelagic.pelagic10_gui, style = bold },
		LightspeedShortcutOverlapped = { fg = pelagic.pelagic10_gui, style = "bold,underline" },
		LightspeedMaskedChar = { fg = pelagic.pelagic4_gui, bg = pelagic.pelagic2_gui, style = bold },
		LightspeedGreyWash = { fg = pelagic.pelagic3_gui_bright },
		LightspeedUnlabeledMatch = { fg = pelagic.pelagic4_gui, bg = pelagic.pelagic1_gui },
		LightspeedOneCharMatch = { fg = pelagic.pelagic8_gui, style = "bold,reverse" },
		LightspeedUniqueChar = { style = "bold,underline" },

		-- copilot
		CopilotLabel = { fg = pelagic.pelagic3_gui, bg = pelagic.none },

		-- Statusline
		StatusLineDull = { fg = pelagic.pelagic3_gui, bg = pelagic.pelagic1_gui },
		StatusLineAccent = { fg = pelagic.pelagic0_gui, bg = pelagic.pelagic13_gui },

		-- mini.nvim
		MiniCompletionActiveParameter = { style = "underline" },

		MiniCursorword = { bg = pelagic.pelagic3_gui },
		MiniCursorwordCurrent = { bg = pelagic.pelagic3_gui },

		MiniIndentscopeSymbol = { fg = pelagic.pelagic10_gui },
		MiniIndentscopePrefix = { style = "nocombine" }, -- Make it invisible

		MiniJump = { fg = pelagic.pelagic0_gui, bg = pelagic.pelagic4_gui },

		MiniJump2dSpot = { fg = pelagic.pelagic12_gui, style = "bold,nocombine" },

		MiniStarterCurrent = { style = "nocombine" },
		MiniStarterFooter = { fg = pelagic.pelagic14_gui, style = italic },
		MiniStarterHeader = { fg = pelagic.pelagic9_gui },
		MiniStarterInactive = { link = "Comment" },
		MiniStarterItem = { link = "Normal" },
		MiniStarterItemBullet = { fg = pelagic.pelagic4_gui },
		MiniStarterItemPrefix = { fg = pelagic.pelagic15_gui },
		MiniStarterSection = { fg = pelagic.pelagic4_gui },
		MiniStarterQuery = { fg = pelagic.pelagic10_gui },

		MiniStatuslineDevinfo = { fg = pelagic.pelagic4_gui, bg = pelagic.pelagic2_gui },
		MiniStatuslineFileinfo = { fg = pelagic.pelagic4_gui, bg = pelagic.pelagic2_gui },
		MiniStatuslineFilename = { fg = pelagic.pelagic4_gui, bg = pelagic.pelagic1_gui },
		MiniStatuslineInactive = { fg = pelagic.pelagic4_gui, bg = pelagic.pelagic0_gui, style = bold },
		MiniStatuslineModeCommand = { fg = pelagic.pelagic0_gui, bg = pelagic.pelagic15_gui, style = bold },
		MiniStatuslineModeInsert = { fg = pelagic.pelagic1_gui, bg = pelagic.pelagic4_gui, style = bold },
		MiniStatuslineModeNormal = { fg = pelagic.pelagic1_gui, bg = pelagic.pelagic9_gui, style = bold },
		MiniStatuslineModeOther = { fg = pelagic.pelagic0_gui, bg = pelagic.pelagic13_gui, style = bold },
		MiniStatuslineModeReplace = { fg = pelagic.pelagic0_gui, bg = pelagic.pelagic11_gui, style = bold },
		MiniStatuslineModeVisual = { fg = pelagic.pelagic0_gui, bg = pelagic.pelagic7_gui, style = bold },

		MiniSurround = { link = "IncSearch" },

		MiniTablineCurrent = { bg = pelagic.pelagic1_gui },
		MiniTablineFill = { link = "TabLineFill" },
		MiniTablineHidden = { bg = pelagic.pelagic0_gui, fg = pelagic.pelagic3_gui },
		MiniTablineModifiedCurrent = { bg = pelagic.pelagic1_gui, fg = pelagic.pelagic15_gui },
		MiniTablineModifiedHidden = { bg = pelagic.pelagic0_gui, fg = pelagic.pelagic15_gui },
		MiniTablineModifiedVisible = { bg = pelagic.pelagic2_gui, fg = pelagic.pelagic15_gui },
		MiniTablineTabpagesection = { fg = pelagic.pelagic10_gui, bg = pelagic.pelagic6_gui, style = reverse_bold },
		MiniTablineVisible = { bg = pelagic.pelagic2_gui },

		MiniTestEmphasis = { style = bold },
		MiniTestFail = { fg = pelagic.pelagic11_gui, style = bold },
		MiniTestPass = { fg = pelagic.pelagic14_gui, style = bold },

		MiniTrailspace = { bg = pelagic.pelagic11_gui },

		-- Aerail
		AerialLine = { bg = pelagic.pelagic2_gui },
		AerialLineNC = { bg = pelagic.pelagic2_gui },

		AerialArrayIcon = { fg = pelagic.pelagic13_gui },
		AerialBooleanIcon = { fg = pelagic.pelagic9_gui, style = bold },
		AerialClassIcon = { fg = pelagic.pelagic9_gui },
		AerialConstantIcon = { fg = pelagic.pelagic13_gui },
		AerialConstructorIcon = { fg = pelagic.pelagic9_gui },
		AerialEnumIcon = { fg = pelagic.pelagic9_gui },
		AerialEnumMemberIcon = { fg = pelagic.pelagic4_gui },
		AerialEventIcon = { fg = pelagic.pelagic9_gui },
		AerialFieldIcon = vim.g.pelagic_italic and { fg = pelagic.pelagic4_gui, style = italic } or { fg = pelagic.pelagic4_gui },
		AerialFileIcon = { fg = pelagic.pelagic14_gui },
		AerialFunctionIcon = vim.g.pelagic_italic and { fg = pelagic.pelagic8_gui, style = italic } or { fg = pelagic.pelagic8_gui },
		AerialInterfaceIcon = { fg = pelagic.pelagic9_gui },
		AerialKeyIcon = { fg = pelagic.pelagic9_gui },
		AerialMethodIcon = vim.g.pelagic_italic and { fg = pelagic.pelagic7_gui, style = italic } or { fg = pelagic.pelagic7_gui },
		AerialModuleIcon = vim.g.pelagic_italic and { fg = pelagic.pelagic4_gui, style = italic } or { fg = pelagic.pelagic4_gui },
		AerialNamespaceIcon = vim.g.pelagic_italic and { fg = pelagic.pelagic4_gui, style = italic }
			or { fg = pelagic.pelagic4_gui },
		AerialNullIcon = { fg = pelagic.pelagic9_gui },
		AerialNumberIcon = { fg = pelagic.pelagic15_gui },
		AerialObjectIcon = { fg = pelagic.pelagic9_gui },
		AerialOperatorIcon = { fg = pelagic.pelagic9_gui },
		AerialPackageIcon = vim.g.pelagic_italic and { fg = pelagic.pelagic4_gui, style = italic } or { fg = pelagic.pelagic4_gui },
		AerialPropertyIcon = vim.g.pelagic_italic and { fg = pelagic.pelagic4_gui, style = italic }
			or { fg = pelagic.pelagic10_gui },
		AerialStringIcon = vim.g.pelagic_italic and { fg = pelagic.pelagic14_gui, style = italic } or { fg = pelagic.pelagic14_gui },
		AerialStructIcon = { fg = pelagic.pelagic9_gui },
		AerialTypeParameterIcon = { fg = pelagic.pelagic10_gui },
		AerialVariableIcon = { fg = pelagic.pelagic4_gui, style = bold },

		AerialArray = { fg = pelagic.pelagic13_gui },
		AerialBoolean = { fg = pelagic.pelagic9_gui, style = bold },
		AerialClass = { fg = pelagic.pelagic9_gui },
		AerialConstant = { fg = pelagic.pelagic13_gui },
		AerialConstructor = { fg = pelagic.pelagic9_gui },
		AerialEnum = { fg = pelagic.pelagic9_gui },
		AerialEnumMember = { fg = pelagic.pelagic4_gui },
		AerialEvent = { fg = pelagic.pelagic9_gui },
		AerialField = vim.g.pelagic_italic and { fg = pelagic.pelagic4_gui, style = italic } or { fg = pelagic.pelagic4_gui },
		AerialFile = { fg = pelagic.pelagic14_gui },
		AerialFunction = vim.g.pelagic_italic and { fg = pelagic.pelagic8_gui, style = italic } or { fg = pelagic.pelagic8_gui },
		AerialInterface = { fg = pelagic.pelagic9_gui },
		AerialKey = { fg = pelagic.pelagic9_gui },
		AerialMethod = vim.g.pelagic_italic and { fg = pelagic.pelagic7_gui, style = italic } or { fg = pelagic.pelagic7_gui },
		AerialModule = vim.g.pelagic_italic and { fg = pelagic.pelagic4_gui, style = italic } or { fg = pelagic.pelagic4_gui },
		AerialNamespace = vim.g.pelagic_italic and { fg = pelagic.pelagic4_gui, style = italic } or { fg = pelagic.pelagic4_gui },
		AerialNull = { fg = pelagic.pelagic9_gui },
		AerialNumber = { fg = pelagic.pelagic15_gui },
		AerialObject = { fg = pelagic.pelagic9_gui },
		AerialOperator = { fg = pelagic.pelagic9_gui },
		AerialPackage = vim.g.pelagic_italic and { fg = pelagic.pelagic4_gui, style = italic } or { fg = pelagic.pelagic4_gui },
		AerialProperty = vim.g.pelagic_italic and { fg = pelagic.pelagic4_gui, style = italic } or { fg = pelagic.pelagic10_gui },
		AerialString = vim.g.pelagic_italic and { fg = pelagic.pelagic14_gui, style = italic } or { fg = pelagic.pelagic14_gui },
		AerialStruct = { fg = pelagic.pelagic9_gui },
		AerialTypeParameter = { fg = pelagic.pelagic10_gui },
		AerialVariable = { fg = pelagic.pelagic4_gui, style = bold },

		-- nvim-navic
		NavicIconsArray = { fg = pelagic.pelagic13_gui },
		NavicIconsBoolean = { fg = pelagic.pelagic9_gui, style = bold },
		NavicIconsClass = { fg = pelagic.pelagic9_gui },
		NavicIconsConstant = { fg = pelagic.pelagic13_gui },
		NavicIconsConstructor = { fg = pelagic.pelagic9_gui },
		NavicIconsEnum = { fg = pelagic.pelagic9_gui },
		NavicIconsEnumMember = { fg = pelagic.pelagic4_gui },
		NavicIconsEvent = { fg = pelagic.pelagic9_gui },
		NavicIconsField = { fg = pelagic.pelagic4_gui, style = italic },
		NavicIconsFile = { fg = pelagic.pelagic14_gui },
		NavicIconsFunction = { fg = pelagic.pelagic8_gui, style = italic },
		NavicIconsInterface = { fg = pelagic.pelagic9_gui },
		NavicIconsKey = { fg = pelagic.pelagic9_gui },
		NavicIconsMethod = { fg = pelagic.pelagic7_gui, style = italic },
		NavicIconsModule = { fg = pelagic.pelagic4_gui, style = italic },
		NavicIconsNamespace = { fg = pelagic.pelagic4_gui, style = italic },
		NavicIconsNull = { fg = pelagic.pelagic9_gui },
		NavicIconsNumber = { fg = pelagic.pelagic15_gui },
		NavicIconsObject = { fg = pelagic.pelagic9_gui },
		NavicIconsOperator = { fg = pelagic.pelagic9_gui },
		NavicIconsPackage = { fg = pelagic.pelagic4_gui, style = italic },
		NavicIconsProperty = { fg = pelagic.pelagic4_gui, style = italic },
		NavicIconsString = { fg = pelagic.pelagic14_gui, style = italic },
		NavicIconsStruct = { fg = pelagic.pelagic9_gui },
		NavicIconsTypeParameter = { fg = pelagic.pelagic10_gui },
		NavicIconsVariable = { fg = pelagic.pelagic4_gui, style = bold },
		NavicText = { fg = pelagic.pelagic4_gui },
		NavicSeparator = { fg = pelagic.pelagic4_gui },
	}
	-- Options:

	-- Disable nvim-tree background
	if vim.g.pelagic_disable_background then
		plugins.NvimTreeNormal = { fg = pelagic.pelagic4_gui, bg = pelagic.none }
	else
		plugins.NvimTreeNormal = { fg = pelagic.pelagic4_gui, bg = pelagic.sidebar }
	end

	if vim.g.pelagic_enable_sidebar_background then
		plugins.NvimTreeNormal = { fg = pelagic.pelagic4_gui, bg = pelagic.sidebar }
	else
		plugins.NvimTreeNormal = { fg = pelagic.pelagic4_gui, bg = pelagic.none }
	end

	return plugins
end

return theme
