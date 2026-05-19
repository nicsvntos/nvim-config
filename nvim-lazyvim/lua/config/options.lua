-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,t:block-blinkon500-blinkoff500-TermCursor"

if vim.g.neovide then
  vim.o.guifont = "Iosevka Nerd Font Mono:h16"

  vim.g.neovide_opacity = 1
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_title_hidden = true
  vim.g.neovide_fullscreen = true
  vim.opt.wrap = true
  vim.opt.linebreak = true
end
