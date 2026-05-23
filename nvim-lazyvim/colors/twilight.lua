-- custom theme based on cosec-twilight

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "twilight"
vim.o.termguicolors = true

local p = {
  -- Backgrounds
  bg0 = "#1a1a1a", -- absolute base / terminal
  bg1 = "#202020", -- normal bg
  bg2 = "#202020", -- float / popup bg, conceal
  bg3 = "#202020", -- sidebars, inactive panes
  bg4 = "#303030", -- cursorline, pmenu bg
  bg5 = "#454545", -- visual selection
  bg6 = "#34383c", -- statusline bg
  bg7 = "#40474f", -- tabline selected

  -- Foregrounds
  fg0 = "#fefefe", -- normal text
  fg1 = "#fffedb", -- bright/emphasis: titles, errors, warnings
  fg2 = "#cccccc", -- constants, statements, specials
  fg3 = "#bfbbba", -- pmenu selected text
  fg4 = "#a09998", -- tabline, secondary
  fg5 = "#918988", -- pmenu normal, question
  fg6 = "#888888", -- line numbers (relative)
  fg7 = "#676767", -- special keys

  -- Syntax accents
  fn = "#aa9aac", -- functions, structure
  ident = "#8b9698", -- identifiers, preproc, todo
  str = "#a2a970", -- strings
  type = "#e3d896", -- types
  op = "#debf7c", -- operators
  dir = "#c1c88d", -- directory, special chars, substitute fg
  yel = "#c1c88d", -- reuse for special char / directory

  -- Diff
  diff_add_fg = "#fffedb",
  diff_add_bg = "#2b3328",
  diff_chg_fg = "#fffedb",
  diff_chg_bg = "#262636",
  diff_del_fg = "#c34143",
  diff_del_bg = "#42242b",
  diff_txt_fg = "#fffedb",
  diff_txt_bg = "#49443c",

  -- Semantic
  error = "#c34143",
  warn = "#debf7c",
  comment = "#6f7b68",
  search = "#5f5958",
  match = "#fffedb",
  sep = "#303030",
  winsep = "#888888",
  winsepbg = "#111111",
  ash = "#d6d2c8", -- current line number

  none = "NONE",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ── Base ──────────────────────────────────────────────────────────────────────
hi("Normal", { fg = p.fg0, bg = p.bg1 })
hi("NormalNC", { fg = p.fg2, bg = p.bg3 })
hi("NormalFloat", { fg = p.fg0, bg = p.bg1 })
hi("FloatBorder", { fg = p.fg6, bg = p.bg2 })
hi("FloatTitle", { fg = p.fn, bg = p.bg2, bold = true })

hi("Cursor", { fg = p.bg1, bg = p.fg0 })
hi("CursorLine", { bg = p.none })
hi("CursorLineNr", { fg = p.ash, bold = true })
hi("CursorColumn", { bg = p.none })
hi("ColorColumn", { bg = p.bg3 })

hi("LineNr", { fg = p.ash })
hi("LineNrAbove", { fg = p.fg6, bg = p.bg2 })
hi("LineNrBelow", { fg = p.fg6, bg = p.bg2 })
hi("SignColumn", { bg = p.none })
hi("FoldColumn", { fg = p.fg6, bg = p.none })
hi("Folded", { fg = p.fg6, bg = p.bg4 })

hi("Visual", { bg = p.bg5 })
hi("VisualNOS", { bg = p.bg5 })
hi("Search", { bg = p.search })
hi("IncSearch", { fg = p.bg1, bg = p.fn, bold = true })
hi("CurSearch", { fg = p.bg1, bg = p.fn, bold = true })
hi("Substitute", { fg = p.bg1, bg = p.dir })

hi("MatchParen", { fg = p.match, bold = true })

hi("StatusLine", { fg = p.fg1, bg = p.bg6 })
hi("StatusLineNC", { fg = p.fg5, bg = p.bg6 })
hi("WinBar", { fg = p.fg4, bg = p.none })
hi("WinBarNC", { fg = p.fg6, bg = p.none })
hi("WinSeparator", { fg = p.winsep, bg = p.winsepbg })
hi("VertSplit", { fg = p.sep })

hi("TabLine", { fg = p.fg4, bg = p.bg2 })
hi("TabLineSel", { fg = p.fg4, bg = p.bg7, bold = true })
hi("TabLineFill", { fg = p.fg4, bg = p.bg2 })

hi("Pmenu", { fg = p.fg5, bg = p.bg4 })
hi("PmenuSel", { fg = p.fg3, bg = p.bg4, bold = true })
hi("PmenuSbar", { fg = p.fg5, bg = p.bg2 })
hi("PmenuThumb", { fg = p.fg5, bg = p.bg2, reverse = true })
hi("PmenuBorder", { fg = p.fg6, bg = p.bg4 })
hi("PmenuKind", { fg = p.fn, bg = p.bg4 })
hi("PmenuKindSel", { fg = p.fn, bg = p.bg4 })
hi("PmenuExtra", { fg = p.fg6, bg = p.bg4 })

hi("EndOfBuffer", { fg = p.bg4 })
hi("NonText", { fg = p.sep })
hi("Whitespace", { fg = p.sep })
hi("SpecialKey", { fg = p.fg7 })

hi("MsgArea", { fg = p.fg2, bg = p.none })
hi("MsgSeparator", { fg = p.fg6 })
hi("MoreMsg", { fg = p.ident })
hi("Question", { fg = p.fg5 })
hi("ErrorMsg", { fg = p.fg1 })
hi("WarningMsg", { fg = p.fg1 })

hi("SpellBad", { sp = p.error, undercurl = true })
hi("SpellCap", { sp = p.warn, undercurl = true })
hi("SpellRare", { sp = p.fn, undercurl = true })
hi("SpellLocal", { sp = p.ident, undercurl = true })

hi("DiffAdd", { fg = p.diff_add_fg, bg = p.diff_add_bg })
hi("DiffChange", { fg = p.diff_chg_fg, bg = p.diff_chg_bg })
hi("DiffDelete", { fg = p.diff_del_fg, bg = p.diff_del_bg })
hi("DiffText", { fg = p.diff_txt_fg, bg = p.diff_txt_bg })
hi("Added", { fg = p.comment })
hi("Changed", { fg = p.fn })
hi("Removed", { fg = p.error })

hi("Directory", { fg = p.dir, bold = true })
hi("Title", { fg = p.fg1, bold = true })
hi("Conceal", { bg = p.bg2 })
hi("QuickFixLine", { bg = p.bg4, bold = true })

-- ── Syntax ────────────────────────────────────────────────────────────────────
hi("Comment", { fg = p.comment })

hi("Constant", { fg = p.fg2 })
hi("String", { fg = p.str })
hi("Character", { fg = p.str })
hi("Number", { fg = p.comment })
hi("Boolean", { fg = p.comment })
hi("Float", { fg = p.comment })

hi("Identifier", { fg = p.ident })
hi("Function", { fg = p.fn })

hi("Statement", { fg = p.fg2 })
hi("Conditional", { fg = p.fg2 })
hi("Repeat", { fg = p.fg2 })
hi("Label", { fg = p.fg2 })
hi("Operator", { fg = p.op })
hi("Keyword", { fg = p.fg2 })
hi("Exception", { fg = p.fn })

hi("PreProc", { fg = p.ident })
hi("Include", { fg = p.ident })
hi("Define", { fg = p.ident })
hi("Macro", { fg = p.ident })
hi("PreCondit", { fg = p.ident })

hi("Type", { fg = p.type })
hi("StorageClass", { fg = p.fg2 })
hi("Structure", { fg = p.fn })
hi("Typedef", { fg = p.type })

hi("Special", { fg = p.fg2 })
hi("SpecialChar", { fg = p.dir })
hi("Tag", { fg = p.fg2 })
hi("Delimiter", { fg = p.fg5 })
hi("SpecialComment", { fg = p.comment })
hi("Debug", { fg = p.warn })

hi("Underlined", { underline = true })
hi("Ignore", { fg = p.fg6 })
hi("Error", { fg = p.error, undercurl = true })
hi("Todo", { fg = p.ident })

-- ── Treesitter ────────────────────────────────────────────────────────────────
hi("@comment", { fg = p.comment })
hi("@comment.documentation", { fg = p.fg6 })

hi("@string", { fg = p.str })
hi("@string.escape", { fg = p.dir })
hi("@string.special", { fg = p.dir })
hi("@string.regexp", { fg = p.dir })
hi("@character", { fg = p.str })

hi("@number", { fg = p.comment })
hi("@number.float", { fg = p.comment })
hi("@boolean", { fg = p.comment })

hi("@variable", { fg = p.fg0 })
hi("@variable.builtin", { fg = p.type })
hi("@variable.parameter", { fg = p.ident })
hi("@variable.member", { fg = p.fg0 })

hi("@function", { fg = p.fn })
hi("@function.builtin", { fg = p.fn })
hi("@function.macro", { fg = p.type })
hi("@function.method", { fg = p.fn })
hi("@function.method.call", { fg = p.fn })
hi("@function.call", { fg = p.fn })

hi("@keyword", { fg = p.fg2 })
hi("@keyword.function", { fg = p.fg2 })
hi("@keyword.operator", { fg = p.op })
hi("@keyword.return", { fg = p.fn })
hi("@keyword.import", { fg = p.fg2 })
hi("@keyword.conditional", { fg = p.fg2 })
hi("@keyword.repeat", { fg = p.fg2 })
hi("@keyword.exception", { fg = p.fn })
hi("@keyword.type", { fg = p.fg2 })
hi("@keyword.modifier", { fg = p.fg2 })

hi("@type", { fg = p.type })
hi("@type.builtin", { fg = p.type })
hi("@type.qualifier", { fg = p.fg2 })
hi("@type.definition", { fg = p.type })

hi("@constant", { fg = p.fg2 })
hi("@constant.builtin", { fg = p.type })
hi("@constant.macro", { fg = p.fg2 })

hi("@property", { fg = p.fg2 })
hi("@attribute", { fg = p.dir })
hi("@module", { fg = p.fg0 })
hi("@namespace", { fg = p.fg0 })

hi("@operator", { fg = p.op })
hi("@punctuation.bracket", { fg = p.fg5 })
hi("@punctuation.delimiter", { fg = p.fg5 })
hi("@punctuation.special", { fg = p.dir })

hi("@constructor", { fg = p.type })

hi("@tag", { fg = p.fg2 })
hi("@tag.builtin", { fg = p.fg2 })
hi("@tag.attribute", { fg = p.type })
hi("@tag.delimiter", { fg = p.fg5 })

hi("@markup.heading", { fg = p.fg1, bold = true })
hi("@markup.heading.1", { fg = p.fn, bold = true })
hi("@markup.heading.2", { fg = p.type, bold = true })
hi("@markup.heading.3", { fg = p.dir, bold = true })
hi("@markup.raw", { fg = p.str })
hi("@markup.link", { fg = p.ident, underline = true })
hi("@markup.link.url", { fg = p.ident, underline = true })
hi("@markup.link.label", { fg = p.fn })
hi("@markup.link.label.markdown_inline", { link = "NONE" })
hi("@markup.list", { fg = p.fg5 })
hi("@markup.italic", { italic = true })
hi("@markup.strong", { bold = true })
hi("@markup.strikethrough", { strikethrough = true })

-- ── LSP ───────────────────────────────────────────────────────────────────────
hi("LspReferenceText", { bg = p.bg5 })
hi("LspReferenceRead", { bg = p.bg5 })
hi("LspReferenceWrite", { bg = p.bg5, bold = true })
hi("LspInlayHint", { fg = p.comment, bg = p.bg3 })
hi("LspCodeLens", { fg = p.comment })
hi("LspSignatureActiveParameter", { fg = p.fn, bold = true })

-- ── Diagnostics ───────────────────────────────────────────────────────────────
hi("DiagnosticError", { fg = p.error })
hi("DiagnosticWarn", { fg = p.warn })
hi("DiagnosticInfo", { fg = p.ident })
hi("DiagnosticHint", { fg = p.fn })
hi("DiagnosticOk", { fg = p.comment })
hi("DiagnosticUnnecessary", { fg = p.fg6 })
hi("DiagnosticDeprecated", { fg = p.fg6, strikethrough = true })

hi("DiagnosticUnderlineError", { sp = p.error, undercurl = true })
hi("DiagnosticUnderlineWarn", { sp = p.warn, undercurl = true })
hi("DiagnosticUnderlineInfo", { sp = p.ident, undercurl = true })
hi("DiagnosticUnderlineHint", { sp = p.fn, undercurl = true })

hi("DiagnosticVirtualTextError", { fg = p.error })
hi("DiagnosticVirtualTextWarn", { fg = p.warn })
hi("DiagnosticVirtualTextInfo", { fg = p.ident })
hi("DiagnosticVirtualTextHint", { fg = p.fn })

hi("DiagnosticFloatingError", { fg = p.error })
hi("DiagnosticFloatingWarn", { fg = p.warn })
hi("DiagnosticFloatingInfo", { fg = p.ident })
hi("DiagnosticFloatingHint", { fg = p.fn })

hi("DiagnosticSignError", { fg = p.error })
hi("DiagnosticSignWarn", { fg = p.warn })
hi("DiagnosticSignInfo", { fg = p.ident })
hi("DiagnosticSignHint", { fg = p.fn })

-- ── Completion ────────────────────────────────────────────────────────────────
hi("CmpItemAbbr", { fg = p.fg0 })
hi("CmpItemAbbrMatch", { fg = p.ident, bold = true })
hi("CmpItemAbbrMatchFuzzy", { fg = p.ident, bold = true })
hi("CmpItemAbbrDeprecated", { fg = p.fg6, strikethrough = true })
hi("CmpItemKind", { fg = p.fn })
hi("CmpItemMenu", { fg = p.comment })

-- ── Telescope ─────────────────────────────────────────────────────────────────
hi("TelescopeNormal", { fg = p.fg0, bg = p.bg2 })
hi("TelescopeBorder", { fg = p.fg6, bg = p.bg2 })
hi("TelescopeTitle", { fg = p.fn, bg = p.bg2, bold = true })
hi("TelescopePromptNormal", { fg = p.fg0, bg = p.bg4 })
hi("TelescopePromptBorder", { fg = p.fg6, bg = p.bg4 })
hi("TelescopePromptTitle", { fg = p.fn, bg = p.bg4, bold = true })
hi("TelescopePromptPrefix", { fg = p.fn })
hi("TelescopeSelection", { bg = p.bg5 })
hi("TelescopeSelectionCaret", { fg = p.fn, bg = p.bg5 })
hi("TelescopeMatching", { fg = p.ident, bold = true })
hi("TelescopePreviewTitle", { fg = p.type, bg = p.bg2, bold = true })
hi("TelescopeResultsTitle", { fg = p.fg6, bg = p.bg2 })

-- ── Git ───────────────────────────────────────────────────────────────────────
hi("GitSignsAdd", { fg = p.comment })
hi("GitSignsChange", { fg = p.fn })
hi("GitSignsDelete", { fg = p.error })
hi("GitSignsCurrentLineBlame", { fg = p.fg6 })

-- ── Treesitter context ────────────────────────────────────────────────────────
hi("TreesitterContext", { bg = p.bg3 })
hi("TreesitterContextLineNumber", { fg = p.fg6, bg = p.bg3 })
hi("TreesitterContextSeparator", { fg = p.sep })

-- ── Trouble ───────────────────────────────────────────────────────────────────
hi("TroubleNormal", { fg = p.fg0, bg = p.bg2 })
hi("TroubleText", { fg = p.fg2 })
hi("TroubleCount", { fg = p.fn, bg = p.bg4 })
hi("TroubleIndent", { fg = p.sep })
hi("TroubleSource", { fg = p.fg6 })

-- ── Indent ────────────────────────────────────────────────────────────────────
hi("IblIndent", { fg = p.bg4 })
hi("IblScope", { fg = p.sep })
hi("MiniIndentscopeSymbol", { fg = p.sep })
hi("MiniIndentscopePrefix", { fg = p.none })

-- ── Noice / Notify ────────────────────────────────────────────────────────────
hi("NoiceCmdlinePopupBorder", { fg = p.fg6 })
hi("NoiceCmdlineIcon", { fg = p.fn })
hi("NoiceConfirmBorder", { fg = p.fg6 })
hi("NotifyERRORBorder", { fg = p.error })
hi("NotifyWARNBorder", { fg = p.warn })
hi("NotifyINFOBorder", { fg = p.ident })
hi("NotifyDEBUGBorder", { fg = p.fg6 })
hi("NotifyERRORTitle", { fg = p.error, bold = true })
hi("NotifyWARNTitle", { fg = p.warn, bold = true })
hi("NotifyINFOTitle", { fg = p.ident, bold = true })

-- ── Oil.nvim ──────────────────────────────────────────────────────────────────
hi("OilDir", { fg = p.fg0, bold = true })
hi("OilFile", { fg = p.fg0 })
hi("OilLink", { fg = p.dir })
hi("OilPermissionNone", { fg = p.fg6 })
hi("OilPermissionRead", { fg = p.ident })
hi("OilPermissionWrite", { fg = p.warn })
hi("OilPermissionExecute", { fg = p.comment })

-- ── Alpha / Dashboard ─────────────────────────────────────────────────────────
hi("AlphaHeader", { fg = p.comment })
hi("AlphaButtons", { fg = p.fg2 })
hi("AlphaShortcut", { fg = p.ident })
hi("AlphaFooter", { fg = p.fg6 })

-- ── Flash ─────────────────────────────────────────────────────────────────────
hi("FlashBackdrop", { fg = p.fg6 })
hi("FlashCurrent", { fg = p.bg1, bg = p.fn, bold = true })
hi("FlashLabel", { fg = p.bg1, bg = p.ident, bold = true })
hi("FlashMatch", { fg = p.ident, bold = true })

-- ── Lualine palette reference ─────────────────────────────────────────────────
-- normal: a.bg=#aa9aac  insert: a.bg=#a2a970
-- visual: a.bg=#e3d896  replace: a.bg=#debf7c  command: a.bg=#8b9698
-- c section: bg=nil (transparent)
