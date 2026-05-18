-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig

require "configs.neovide"
local M = {}

M.base46 = {
  theme = "poimandres",
  icons_package = "nvchad",
  integrations = {
    "blankline",
  },

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

-- M.nvdash = { load_on_startup = true }
M.ui = {
  cmp = {
    icons_left = true,
  },
}

return M
