vim.cmd("autocmd!")

vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1
vim.g.NERDTreeHijackNetrw = 0


vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showmode = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'fish'
vim.opt.backupskip = '/tmp/*,/private/tpm/*'
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.ai = true    -- Auto indent
vim.opt.si = true    -- Smart indent
vim.opt.wrap = false -- No wrap line
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' }
vim.opt.wildignore:append { '*/node_modules/*' }

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])
-- but this doesn't work on iTerm2

-- Turn off paste mode wneb leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
        pattern = '*',
        command = "set nopaste"
})

vim.opt.formatoptions:append { 'r' }

vim.opt.clipboard:append { 'unnamedplus' }

vim.opt.clipboard:append { 'unnamedplus' }
