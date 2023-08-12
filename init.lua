local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

	"neovim/nvim-lspconfig",

		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",

    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

	
	'martinsione/darkplus.nvim',

	'nvim-telescope/telescope.nvim',
	'nvim-lua/plenary.nvim',

     "ellisonleao/gruvbox.nvim",

  "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",

})

require("core.option")
require("core.remap")
require("lsp.mason")
require("lsp.lspconfig")
require("plugin.cmp")
