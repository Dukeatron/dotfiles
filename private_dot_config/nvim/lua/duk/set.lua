---@diagnostic disable: undefined-global

-- Line Numbers
vim.o.relativenumber = true

-- General Opts
vim.o.termguicolors = true
vim.o.syntax = true

-- Indents
vim.o.smarttab = true
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 2

-- Neovide
if vim.g.neovide then
  vim.cmd("cd $HOME")
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.o.guifont = "Iosevka Term"
end

