-- Treesitter

require'nvim-treesitter.configs'.setup{
  highlight = {

	enable = true,
	disable = {}
  },

  ensure_installed = {
	"python",
	"vim",
	"lua",
	"javascript",
	"typescript",
	"bash",
	"go",
	"rust"
  }

}
