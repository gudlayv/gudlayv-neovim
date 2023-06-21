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
	{ "dracula/vim" },
	{ "nvim-lualine/lualine.nvim" },
	{
		"nvim-lualine/lualine.nvim",
		event = { "VimEnter" },
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"linrongbin16/lsp-progress.nvim",
		},
	},
	{
		"linrongbin16/lsp-progress.nvim",
		event = { "VimEnter" },
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lsp-progress").setup()
		end,
	},
	{ "glepnir/lspsaga.nvim" }, -- LSP UIs
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
	},
	{ "nvim-lua/plenary.nvim" }, -- Common utilities
	{ "onsails/lspkind-nvim" }, -- vscode-like pictograms
	{ "hrsh7th/cmp-buffer" }, -- nvim-cmp source for buffer words
	{ "hrsh7th/cmp-nvim-lsp" }, -- nvim-cmp source for neovim's built-in LSP
	{ "hrsh7th/nvim-cmp" }, -- Completion
	{ "neovim/nvim-lspconfig" }, -- LSP
	{ "jose-elias-alvarez/null-ls.nvim" }, -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
	},
	{ "williamboman/mason-lspconfig.nvim" },

	{ "windwp/nvim-ts-autotag" },
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"s1n7ax/nvim-window-picker",
		},
	},
	{
		"akinsho/bufferline.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{ "akinsho/toggleterm.nvim", version = "*", config = true },
	{ "folke/which-key.nvim" },
	{
		"Shatur/neovim-session-manager",
		event = "BufWritePost",
		cmd = "SessionManager",
	},
	{
		"kevinhwang91/nvim-ufo",
		dependencies = { "kevinhwang91/promise-async" },
	},
	{ "nvim-telescope/telescope.nvim" },
	{ "nvim-telescope/telescope-file-browser.nvim" },

	{ "windwp/nvim-autopairs" },
	{ "windwp/nvim-ts-autotag" },
	{ "L3MON4D3/LuaSnip" },
	{ "folke/which-key.nvim" },

	{ "lewis6991/gitsigns.nvim" },
	{ "dinhhuy258/git.nvim" },

	{
		"numToStr/Comment.nvim",
		dependencies = {
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
	},
})
