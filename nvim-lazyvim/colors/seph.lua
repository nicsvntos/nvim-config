--custom theme (heavily inspired by the gorgoroth theme)

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "harow"
vim.o.termguicolors = true

local p = {
  -- Backgrounds (near-black, gorgoroth-style)
  bg0 = "#161619", -- terminal / absolute base
  bg1 = "#161619", -- float / popup bg
  bg2 = "#161619", -- float / popup bg
  bg3 = "#161619", -- sidebars, inactive panes
  bg4 = "#202025", -- cursorline
  bg5 = "#282830", -- visual selection
  bg6 = "#303038", -- folded, active indent

  -- Foregrounds (grey scale — the primary syntax color)
  fg0 = "#e4e2dc", -- headings, titles (brightest)
  fg1 = "#c8c8c8", -- normal text, identifiers, variables
  fg2 = "#a0a0a0", -- parameters, secondary text
  fg3 = "#787878", -- borders, separators, punctuation
  fg4 = "#565660", -- line numbers (relative), subtle ui
  fg5 = "#484855", -- comments (faintest)

  -- Purple accents (used sparingly — functions + a few keywords)
  pu_fn = "#bc96b0", -- functions (rose-purple)
  pu_kw = "#787bab", -- return/control-flow keywords only
  pu_str = "#8a739a", -- strings
  pu_dim = "#5d6090", -- dimmer purple (alpha bg, dashboard)

  -- Blue accents (types, matches, info)
  bl_ty = "#9bb4bc", -- types, interfaces
  bl_hit = "#6e94b2", -- search matches, active
  bl_dim = "#4e728e", -- dimmer blue

  -- Cold grey-blue (gorgoroth frost — replace, special chars)
  frost = "#a1b3b9",
  ash = "#d6d2c8", -- current line number
  slate = "#35353f", -- winbar, split borders

  -- Semantic
  error = "#912222",
  warn = "#a89060",
  info = "#6e94b2",
  hint = "#787bab",
  ok = "#6f7b68",

  git_add = "#6f7b68",
  git_mod = "#8a8ab0",
  git_del = "#912222",

  none = "NONE",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

hi("Normal", { fg = p.fg1, bg = p.bg1 })
hi("NormalNC", { fg = p.fg2, bg = p.bg3 })
hi("NormalFloat", { fg = p.fg1, bg = p.bg2 })
hi("FloatBorder", { fg = p.fg4, bg = p.bg2 })
hi("FloatTitle", { fg = p.pu_fn, bg = p.bg2, bold = true })

hi("Cursor", { fg = p.bg1, bg = p.fg1 })
hi("CursorLine", { bg = p.bg4 })
hi("CursorLineNr", { fg = p.ash, bg = p.bg4, bold = true })
hi("CursorColumn", { bg = p.bg4 })
hi("ColorColumn", { bg = p.bg3 })

hi("LineNr", { fg = p.ash })
hi("LineNrAbove", { fg = p.fg4 })
hi("LineNrBelow", { fg = p.fg4 })
hi("SignColumn", { bg = p.none })
hi("FoldColumn", { fg = p.fg4, bg = p.none })
hi("Folded", { fg = p.fg4, bg = p.bg6 })

hi("Visual", { bg = p.bg5 })
hi("VisualNOS", { bg = p.bg5 })
hi("Search", { fg = p.bg1, bg = p.bl_hit })
hi("IncSearch", { fg = p.bg1, bg = p.pu_fn, bold = true })
hi("CurSearch", { fg = p.bg1, bg = p.pu_fn, bold = true })
hi("Substitute", { fg = p.bg1, bg = p.frost })

hi("MatchParen", { fg = p.pu_fn, bold = true })

hi("StatusLine", { fg = p.fg2, bg = p.bg3 })
hi("StatusLineNC", { fg = p.fg4, bg = p.bg3 })
hi("WinBar", { fg = p.fg3, bg = p.none })
hi("WinBarNC", { fg = p.fg4, bg = p.none })
hi("WinSeparator", { fg = p.slate, bg = p.none })
hi("VertSplit", { fg = p.slate, bg = p.none })

hi("TabLine", { fg = p.fg4, bg = p.bg3 })
hi("TabLineSel", { fg = p.fg1, bg = p.bg4, bold = true })
hi("TabLineFill", { bg = p.bg3 })

hi("Pmenu", { fg = p.fg1, bg = p.bg2 })
hi("PmenuSel", { fg = p.fg1, bg = p.bg4, bold = true })
hi("PmenuSbar", { bg = p.bg3 })
hi("PmenuThumb", { bg = p.slate })
hi("PmenuBorder", { fg = p.fg4, bg = p.bg2 })
hi("PmenuKind", { fg = p.pu_kw, bg = p.bg2 })
hi("PmenuKindSel", { fg = p.pu_kw, bg = p.bg4 })
hi("PmenuExtra", { fg = p.fg4, bg = p.bg2 })

hi("EndOfBuffer", { fg = p.bg3 })
hi("NonText", { fg = p.bg6 })
hi("Whitespace", { fg = p.bg6 })
hi("SpecialKey", { fg = p.fg4 })

hi("MsgArea", { fg = p.fg2, bg = p.none })
hi("MsgSeparator", { fg = p.fg4 })
hi("MoreMsg", { fg = p.bl_ty })
hi("Question", { fg = p.bl_ty })
hi("ErrorMsg", { fg = p.error })
hi("WarningMsg", { fg = p.warn })

hi("SpellBad", { sp = p.error, undercurl = true })
hi("SpellCap", { sp = p.warn, undercurl = true })
hi("SpellRare", { sp = p.hint, undercurl = true })
hi("SpellLocal", { sp = p.info, undercurl = true })

hi("DiffAdd", { fg = p.git_add })
hi("DiffChange", { fg = p.git_mod })
hi("DiffDelete", { fg = p.git_del })
hi("DiffText", { fg = p.git_mod, bg = p.bg5, bold = true })
hi("Added", { fg = p.git_add })
hi("Changed", { fg = p.git_mod })
hi("Removed", { fg = p.git_del })

hi("Directory", { fg = p.fg1, bold = true })
hi("Title", { fg = p.fg0, bold = true })
hi("Conceal", { fg = p.fg4 })
hi("QuickFixLine", { bg = p.bg5, bold = true })

hi("Comment", { fg = p.fg5 })

hi("Constant", { fg = p.fg2 }) -- grey
hi("String", { fg = p.pu_str }) -- dim purple (values)
hi("Character", { fg = p.pu_str })
hi("Number", { fg = p.fg2 }) -- grey
hi("Boolean", { fg = p.fg2 }) -- grey
hi("Float", { fg = p.fg2 }) -- grey

hi("Identifier", { fg = p.fg1 }) -- grey
hi("Function", { fg = p.pu_fn }) -- purple accent ✦

hi("Statement", { fg = p.fg2 }) -- grey
hi("Conditional", { fg = p.fg2 }) -- grey (if/else)
hi("Repeat", { fg = p.fg2 }) -- grey (for/while)
hi("Label", { fg = p.fg2 }) -- grey
hi("Operator", { fg = p.fg3 }) -- muted grey
hi("Keyword", { fg = p.fg2 }) -- grey
hi("Exception", { fg = p.pu_kw }) -- return/throw — subtle purple

hi("PreProc", { fg = p.fg3 }) -- grey
hi("Include", { fg = p.fg2 }) -- grey (import)
hi("Define", { fg = p.fg2 })
hi("Macro", { fg = p.fg2 })
hi("PreCondit", { fg = p.fg2 })

hi("Type", { fg = p.bl_ty }) -- blue accent ✦
hi("StorageClass", { fg = p.fg2 }) -- grey
hi("Structure", { fg = p.bl_ty }) -- blue (struct/class def)
hi("Typedef", { fg = p.bl_ty }) -- blue

hi("Special", { fg = p.frost }) -- cold grey-blue
hi("SpecialChar", { fg = p.frost })
hi("Tag", { fg = p.fg2 })
hi("Delimiter", { fg = p.fg3 })
hi("SpecialComment", { fg = p.fg5 })
hi("Debug", { fg = p.warn })

hi("Underlined", { underline = true })
hi("Ignore", { fg = p.fg4 })
hi("Error", { fg = p.error })
hi("Todo", { fg = p.bg1, bg = p.pu_kw, bold = true })

hi("@comment", { fg = p.fg5 })
hi("@comment.documentation", { fg = p.fg4 })

hi("@string", { fg = p.pu_str })
hi("@string.escape", { fg = p.frost })
hi("@string.special", { fg = p.frost })
hi("@string.regexp", { fg = p.frost })
hi("@character", { fg = p.pu_str })

hi("@number", { fg = p.fg2 })
hi("@number.float", { fg = p.fg2 })
hi("@boolean", { fg = p.fg2 })

hi("@variable", { fg = p.fg1 })
hi("@variable.builtin", { fg = p.bl_ty })
hi("@variable.parameter", { fg = p.fg2 })
hi("@variable.member", { fg = p.fg1 })

hi("@function", { fg = p.pu_fn })
hi("@function.builtin", { fg = p.pu_fn })
hi("@function.macro", { fg = p.bl_ty })
hi("@function.method", { fg = p.pu_fn })
hi("@function.method.call", { fg = p.pu_fn })
hi("@function.call", { fg = p.pu_fn })

hi("@keyword", { fg = p.fg2 })
hi("@keyword.function", { fg = p.fg2 })
hi("@keyword.operator", { fg = p.fg3 })
hi("@keyword.return", { fg = p.pu_kw })
hi("@keyword.import", { fg = p.fg2 })
hi("@keyword.conditional", { fg = p.fg2 })
hi("@keyword.repeat", { fg = p.fg2 })
hi("@keyword.exception", { fg = p.pu_kw })
hi("@keyword.type", { fg = p.fg2 })
hi("@keyword.modifier", { fg = p.fg2 })

hi("@type", { fg = p.bl_ty })
hi("@type.builtin", { fg = p.bl_ty })
hi("@type.qualifier", { fg = p.fg2 })
hi("@type.definition", { fg = p.bl_ty })

hi("@constant", { fg = p.fg2 })
hi("@constant.builtin", { fg = p.bl_ty })
hi("@constant.macro", { fg = p.fg2 })

hi("@property", { fg = p.fg2 })
hi("@attribute", { fg = p.frost })
hi("@module", { fg = p.fg1 })
hi("@namespace", { fg = p.fg1 })

hi("@operator", { fg = p.fg3 })
hi("@punctuation.bracket", { fg = p.fg3 })
hi("@punctuation.delimiter", { fg = p.fg3 })
hi("@punctuation.special", { fg = p.frost })

hi("@constructor", { fg = p.bl_ty })

hi("@tag", { fg = p.fg2 })
hi("@tag.builtin", { fg = p.fg2 })
hi("@tag.attribute", { fg = p.bl_ty })
hi("@tag.delimiter", { fg = p.fg3 })

hi("@markup.heading", { fg = p.fg0, bold = true })
hi("@markup.heading.1", { fg = p.pu_fn, bold = true })
hi("@markup.heading.2", { fg = p.bl_ty, bold = true })
hi("@markup.heading.3", { fg = p.frost, bold = true })
hi("@markup.raw", { fg = p.pu_str })
hi("@markup.link", { fg = p.bl_hit, underline = true })
hi("@markup.link.url", { fg = p.bl_hit, underline = true })
hi("@markup.link.label", { fg = p.pu_fn })
hi("@markup.list", { fg = p.fg3 })
hi("@markup.italic", { italic = true })
hi("@markup.strong", { bold = true })
hi("@markup.strikethrough", { strikethrough = true })

hi("LspReferenceText", { bg = p.bg5 })
hi("LspReferenceRead", { bg = p.bg5 })
hi("LspReferenceWrite", { bg = p.bg5, bold = true })
hi("LspInlayHint", { fg = p.fg5, bg = p.bg3 })
hi("LspCodeLens", { fg = p.fg5 })
hi("LspSignatureActiveParameter", { fg = p.pu_fn, bold = true })

hi("DiagnosticError", { fg = p.error })
hi("DiagnosticWarn", { fg = p.warn })
hi("DiagnosticInfo", { fg = p.info })
hi("DiagnosticHint", { fg = p.hint })
hi("DiagnosticOk", { fg = p.ok })
hi("DiagnosticUnnecessary", { fg = p.fg4 })
hi("DiagnosticDeprecated", { fg = p.fg4, strikethrough = true })

hi("DiagnosticUnderlineError", { sp = p.error, undercurl = true })
hi("DiagnosticUnderlineWarn", { sp = p.warn, undercurl = true })
hi("DiagnosticUnderlineInfo", { sp = p.info, undercurl = true })
hi("DiagnosticUnderlineHint", { sp = p.hint, undercurl = true })

hi("DiagnosticVirtualTextError", { fg = p.error })
hi("DiagnosticVirtualTextWarn", { fg = p.warn })
hi("DiagnosticVirtualTextInfo", { fg = p.info })
hi("DiagnosticVirtualTextHint", { fg = p.hint })

hi("DiagnosticFloatingError", { fg = p.error })
hi("DiagnosticFloatingWarn", { fg = p.warn })
hi("DiagnosticFloatingInfo", { fg = p.info })
hi("DiagnosticFloatingHint", { fg = p.hint })

hi("DiagnosticSignError", { fg = p.error })
hi("DiagnosticSignWarn", { fg = p.warn })
hi("DiagnosticSignInfo", { fg = p.info })
hi("DiagnosticSignHint", { fg = p.hint })

hi("CmpItemAbbr", { fg = p.fg1 })
hi("CmpItemAbbrMatch", { fg = p.bl_hit, bold = true })
hi("CmpItemAbbrMatchFuzzy", { fg = p.bl_dim, bold = true })
hi("CmpItemAbbrDeprecated", { fg = p.fg4, strikethrough = true })
hi("CmpItemKind", { fg = p.pu_kw })
hi("CmpItemMenu", { fg = p.fg5 })

hi("TelescopeNormal", { fg = p.fg1, bg = p.bg2 })
hi("TelescopeBorder", { fg = p.fg4, bg = p.bg2 })
hi("TelescopeTitle", { fg = p.pu_fn, bg = p.bg2, bold = true })
hi("TelescopePromptNormal", { fg = p.fg1, bg = p.bg4 })
hi("TelescopePromptBorder", { fg = p.fg4, bg = p.bg4 })
hi("TelescopePromptTitle", { fg = p.pu_fn, bg = p.bg4, bold = true })
hi("TelescopePromptPrefix", { fg = p.pu_kw })
hi("TelescopeSelection", { bg = p.bg5 })
hi("TelescopeSelectionCaret", { fg = p.pu_fn, bg = p.bg5 })
hi("TelescopeMatching", { fg = p.bl_hit, bold = true })
hi("TelescopePreviewTitle", { fg = p.bl_ty, bg = p.bg2, bold = true })
hi("TelescopeResultsTitle", { fg = p.fg4, bg = p.bg2 })

hi("GitSignsAdd", { fg = p.git_add })
hi("GitSignsChange", { fg = p.git_mod })
hi("GitSignsDelete", { fg = p.git_del })
hi("GitSignsCurrentLineBlame", { fg = p.fg5 })

hi("TreesitterContext", { bg = p.bg3 })
hi("TreesitterContextLineNumber", { fg = p.fg4, bg = p.bg3 })
hi("TreesitterContextSeparator", { fg = p.slate })

hi("TroubleNormal", { fg = p.fg1, bg = p.bg2 })
hi("TroubleText", { fg = p.fg2 })
hi("TroubleCount", { fg = p.pu_kw, bg = p.bg3 })
hi("TroubleIndent", { fg = p.slate })
hi("TroubleSource", { fg = p.fg4 })

hi("IblIndent", { fg = p.bg6 })
hi("IblScope", { fg = p.slate })
hi("MiniIndentscopeSymbol", { fg = p.slate })
hi("MiniIndentscopePrefix", { fg = p.none })

-- ── Noice / Notify ────────────────────────────────────────────────────────────
hi("NoiceCmdlinePopupBorder", { fg = p.fg4 })
hi("NoiceCmdlineIcon", { fg = p.pu_kw })
hi("NoiceConfirmBorder", { fg = p.fg4 })
hi("NotifyERRORBorder", { fg = p.error })
hi("NotifyWARNBorder", { fg = p.warn })
hi("NotifyINFOBorder", { fg = p.info })
hi("NotifyDEBUGBorder", { fg = p.fg4 })
hi("NotifyERRORTitle", { fg = p.error, bold = true })
hi("NotifyWARNTitle", { fg = p.warn, bold = true })
hi("NotifyINFOTitle", { fg = p.info, bold = true })

-- ── Oil.nvim ──────────────────────────────────────────────────────────────────
hi("OilDir", { fg = p.fg1, bold = true })
hi("OilFile", { fg = p.fg1 })
hi("OilLink", { fg = p.frost })
hi("OilPermissionNone", { fg = p.fg4 })
hi("OilPermissionRead", { fg = p.bl_hit })
hi("OilPermissionWrite", { fg = p.warn })
hi("OilPermissionExecute", { fg = p.ok })

-- ── Alpha / Dashboard ─────────────────────────────────────────────────────────
hi("AlphaHeader", { fg = p.pu_dim })
hi("AlphaButtons", { fg = p.fg2 })
hi("AlphaShortcut", { fg = p.bl_hit })
hi("AlphaFooter", { fg = p.fg5 })

-- ── Flash ─────────────────────────────────────────────────────────────────────
hi("FlashBackdrop", { fg = p.fg4 })
hi("FlashCurrent", { fg = p.bg1, bg = p.pu_fn, bold = true })
hi("FlashLabel", { fg = p.bg1, bg = p.bl_hit, bold = true })
hi("FlashMatch", { fg = p.bl_hit, bold = true })

-- ── Lualine palette reference ─────────────────────────────────────────────────
-- normal:  a.bg=#787bab  insert: a.bg=#bc96b0
-- visual:  a.bg=#787bab  replace: a.bg=#a1b3b9  command: a.bg=#6e94b2
-- c section: bg=nil (transparent)
