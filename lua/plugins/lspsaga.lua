local status, saga = pcall(require, "lspsaga")
if not status then
	return
end

saga.setup({
	ui = {
		winblend = 10,
		border = "rounded",
		colors = {
			normal_bg = "#002b36",
		},
	},
	symbol_in_winbar = {
		enable = false,
	},
})

local diagnostic = require("lspsaga.diagnostic")
local opts = { noremap = true, silent = true }
local keymap = vim.keymap
keymap.set("n", "<C-j>", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
keymap.set("n", "gl", "<Cmd>Lspsaga show_line_diagnostics<CR>", opts)
keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)
keymap.set("n", "gd", "<Cmd>Lspsaga lsp_finder<CR>", opts)
keymap.set("i", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
keymap.set("n", "gp", "<Cmd>Lspsaga peek_definition<CR>", opts)
keymap.set("n", "gr", "<Cmd>Lspsaga rename<CR>", opts)
keymap.set("n", "gt", "<cmd>Lspsaga peek_type_definition<CR>")
keymap.set("n", "gT", "<cmd>Lspsaga goto_type_definition<CR>")

-- code action
vim.keymap.set({ "n", "v" }, "<leader>la", "<cmd>Lspsaga code_action<CR>")
