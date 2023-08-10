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
        {
                "nvim-neo-tree/neo-tree.nvim",
                branch = "v2.x",
                dependencies = {
                        "nvim-lua/plenary.nvim",
                        "MunifTanjim/nui.nvim",
                        "s1n7ax/nvim-window-picker",
                },
        },
        { "folke/which-key.nvim" },
        {
                "svrana/neosolarized.nvim",
                dependencies = { "tjdevries/colorbuddy.nvim" },
        },
        {
                "linrongbin16/lsp-progress.nvim",
                event = { "VimEnter" },
                config = function()
                        require("lsp-progress").setup()
                end,
        },
        "nvim-lualine/lualine.nvim",       -- Statusline
        "nvim-lua/plenary.nvim",           -- Common utilities
        "onsails/lspkind-nvim",            -- vscode-like pictograms
        "hrsh7th/cmp-buffer",              -- nvim-cmp source for buffer words
        "hrsh7th/cmp-nvim-lsp",            -- nvim-cmp source for neovim's built-in LSP
        "hrsh7th/nvim-cmp",                -- Completion
        "neovim/nvim-lspconfig",           -- LSP
        "jose-elias-alvarez/null-ls.nvim", -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",

        "nvimdev/lspsaga.nvim", -- LSP UIs
        "L3MON4D3/LuaSnip",
        {
                "nvim-treesitter/nvim-treesitter",
                run = function()
                        require("nvim-treesitter.install").update({ with_sync = true })
                end,
        },
        "kyazdani42/nvim-web-devicons", -- File icons
        "nvim-telescope/telescope.nvim",
        "nvim-telescope/telescope-file-browser.nvim",
        "windwp/nvim-autopairs",
        "windwp/nvim-ts-autotag",
        {
                "numToStr/Comment.nvim",
                dependencies = {
                        "JoosepAlviste/nvim-ts-context-commentstring",
                },
        },
        "norcalli/nvim-colorizer.lua",
        "folke/zen-mode.nvim",
        "akinsho/nvim-bufferline.lua",
        -- 'github/copilot.vim'

        "lewis6991/gitsigns.nvim",
        "dinhhuy258/git.nvim", -- For git blame & browse

        { "akinsho/toggleterm.nvim", version = "*", config = true },
        {
                "kevinhwang91/nvim-ufo",
                dependencies = { "kevinhwang91/promise-async" },
        },
})
