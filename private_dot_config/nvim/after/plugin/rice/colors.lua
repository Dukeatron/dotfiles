vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

--local darkmode_overrides = {
  --base = "#000000",
  --crust = "#000000",
 -- mantle = "#000000",
  -- surface0 = "#101010",
  -- surface1 = "#141414",
  -- surface2 = "#181818",
  -- overlay1 = "#202020",
  -- overlay2 = "#242424",
  -- overlay3 = "#282828",
--}

--local colors = require("catppuccin.palettes").get_palette()

require("catppuccin").setup({
  	transparent_background = true,

	integrations = {
	  fidget = true,
	  bufferline = true
	}
})

vim.api.nvim_command "colorscheme catppuccin"



--require("catppuccin").setup({
 -- color_overrides = {
   -- mocha = darkmode_overrides,
  --  macchiato = darkmode_overrides,
 --   frappe = darkmode_overrides,
--  },

