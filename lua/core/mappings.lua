vim.g.mapleader = " "

-- NeoTree
vim.keymap.set("n", "<leader>f", ":Neotree float focus toggle<CR>")
vim.keymap.set("n", "<leader>E", ":Neotree focus % <CR>")
vim.keymap.set("n", "<leader>e", ":Neotree focus toggle<CR>")
vim.keymap.set("n", "<leader>o", ":Neotree float git_status<CR>")

-- Navigation
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<leader>/", ":CommentToggle<CR>")

-- Splits
vim.keymap.set("n", "|", ":vsplit<CR>")
vim.keymap.set("n", "\\", ":split<CR>")

-- Other
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- Tabs
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<leader>c", ":bdelete<CR>")
vim.keymap.set("n", "<leader>bc", ":bdelete<CR>")
vim.keymap.set("n", "<leader>bx", ":BufferLinePickClose<CR>")
vim.keymap.set("n", "<leader>bC", ":BufferLineGroupClose ungrouped<CR>")

-- Terminal
vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>")
vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>")
vim.keymap.set("n", "<leader>gg", function() _G._LAZYGIT_TOGGLE() end)

-- Session
vim.keymap.set("n", "<leader>Sl", "<cmd>SessionManager! load_last_session<cr>")
vim.keymap.set("n", "<leader>Ss","<cmd>SessionManager! save_current_session<cr>")
vim.keymap.set("n", "<leader>Sd", "<cmd>SessionManager! delete_session<cr>")
vim.keymap.set("n", "<leader>Sf", "<cmd>SessionManager! load_session<cr>")
vim.keymap.set("n", "<leader>S.", "<cmd>SessionManager! load_current_dir_session<cr>")
