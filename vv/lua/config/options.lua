vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.netrw_banner = 0

if vim.g.neovide then
	vim.o.guifont = "Iosevka Nerd Font Mono:h14"
	vim.g.neovide_opacity = 1
	vim.o.columns = 200
	vim.o.lines = 50
end

local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.signcolumn = "yes"
opt.cursorline = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

opt.wrap = false
opt.linebreak = true

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

opt.splitbelow = true
opt.splitright = true

opt.termguicolors = true

opt.undofile = true
opt.swapfile = false
opt.backup = false

opt.scrolloff = 8
opt.sidescrolloff = 8

opt.updatetime = 250
opt.timeoutlen = 300

opt.list = false
opt.listchars = { trail = "·", nbsp = "␣" }
opt.fillchars = { eob = " " }
opt.laststatus = 300
opt.showmode = false
opt.cmdheight = 0
opt.clipboard = "unnamedplus"
