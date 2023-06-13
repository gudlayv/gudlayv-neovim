vim.g.mapleader = " "
local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- NeoTree
keymap.set("n", "<leader>f", ":Neotree float focus toggle<CR>")
keymap.set("n", "<leader>E", ":Neotree focus % <CR>")
keymap.set("n", "<leader>e", ":Neotree focus toggle<CR>")
keymap.set("n", "<leader>o", ":Neotree float git_status<CR>")

-- Navigation
keymap.set("n", "<c-k>", ":wincmd k<CR>", {silent = true})
keymap.set("n", "<c-j>", ":wincmd j<CR>", {silent = true})
keymap.set("n", "<c-h>", ":wincmd h<CR>", {silent = true})
keymap.set("n", "<c-l>", ":wincmd l<CR>", {silent = true})
keymap.set("n", "<leader>/", ":CommentToggle<CR>", {silent = true})

-- Splits
keymap.set("n", "|", ":vsplit<CR>", {silent = true})
keymap.set("n", "\\", ":split<CR>", {silent = true})

-- Other
keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>q", ":q<CR>")
keymap.set("i", "jj", "<Esc>")
keymap.set("n", "<leader>h", ":nohlsearch<CR>")
keymap.set("n", "<leader>r", "<cmd>LspRestart<cr>")


-- Tabs
keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>")
keymap.set("n", "<leader>c", ":bdelete<CR>")
keymap.set("n", "<leader>bc", ":bdelete<CR>")
keymap.set("n", "<leader>bx", ":BufferLinePickClose<CR>")
keymap.set("n", "<leader>bC", ":BufferLineGroupClose ungrouped<CR>")

-- Terminal
keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>")
keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>")
keymap.set("n", "<leader>gg", function() _G._LAZYGIT_TOGGLE() end)

-- Session
keymap.set("n", "<leader>Sl", "<cmd>SessionManager! load_last_session<cr>")
keymap.set("n", "<leader>Ss","<cmd>SessionManager! save_current_session<cr>")
keymap.set("n", "<leader>Sd", "<cmd>SessionManager! delete_session<cr>")
keymap.set("n", "<leader>Sf", "<cmd>SessionManager! load_session<cr>")
keymap.set("n", "<leader>S.", "<cmd>SessionManager! load_current_dir_session<cr>")
