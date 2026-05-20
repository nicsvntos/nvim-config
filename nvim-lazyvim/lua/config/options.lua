-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,t:block-blinkon500-blinkoff500-TermCursor"

if vim.g.neovide then
  vim.o.guifont = "Iosevka Nerd Font Mono:h14"

  vim.g.neovide_opacity = 0.98
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_fullscreen = true
  vim.opt.wrap = true
  vim.opt.linebreak = true
  vim.opt.showtabline = 0

  vim.o.columns = 200
  vim.o.lines = 50
end
