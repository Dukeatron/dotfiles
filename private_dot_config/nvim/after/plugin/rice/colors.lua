vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha

require("catppuccin").setup({
  	transparent_background = true,

	integrations = {
	  fidget = true
	}
})

vim.api.nvim_command "colorscheme catppuccin"
