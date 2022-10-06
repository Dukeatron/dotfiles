local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Slightly broken packer.nvim implementation
-- DO NOT EDIT FUNCTION OR ELSE IT WILL BORK!

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- this is essential.
	use { "catppuccin/nvim", as = "catppuccin", branch = 'cache' } -- colorscheme
	use 'lewis6991/impatient.nvim' -- faster load times
	use {'nvim-treesitter/nvim-treesitter'} -- syntax highlighting
	use 'neovim/nvim-lspconfig' -- configuration for neovim LSP
	use {"williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim"} -- install servers
	use {"hrsh7th/cmp-nvim-lsp", "hrsh7th/nvim-cmp", "hrsh7th/cmp-vsnip", "hrsh7th/vim-vsnip"} -- autocomplete
	use {"windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end} -- bracket completion
	use 'j-hui/fidget.nvim' -- lsp load status
	use 'feline-nvim/feline.nvim' -- status bar
	use 'andweeb/presence.nvim' -- rich presence
	use 'onsails/lspkind.nvim' -- lsp icons

	use({
	  "folke/noice.nvim",
	  event = "VimEnter",
	  config = function()
		require("noice").setup()
	  end,
	  requires = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
		"hrsh7th/nvim-cmp",
	  }
	}) -- UI Fixes, testing it rn

	use 'dstein64/vim-startuptime' -- metrics

	-- auto-install
	if packer_bootstrap then
		require('packer').sync()
	end
  end)

