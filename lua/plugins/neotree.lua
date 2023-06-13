local status, window_picker = pcall(require, 'window-picker')
if (not status) then return end

window_picker.setup({
        autoselect_one = false,
        include_current = false,
        filter_rules = {
                bo = {
                        filetype = { "neo-tree", "neo-tree-popup", "notify" },
                        buftype = { "terminal", "quickfix" },
                },
        },
        other_win_hl_color = "#e35e4f",
})
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

local status1, neo_tree = pcall(require, 'neo-tree')
if (not status1) then return end
neo_tree.setup({
        default_component_configs = {
                icon = {
                        folder_empty = "󰜌",
                        folder_empty_open = "󰜌",
                },
                git_status = {
                        symbols = {
                                renamed = "󰁕",
                                unstaged = "󰄱",
                        },
                },
        },
        document_symbols = {
                kinds = {
                        File = { icon = "󰈙", hl = "Tag" },
                        Namespace = { icon = "󰌗", hl = "Include" },
                        Package = { icon = "󰏖", hl = "Label" },
                        Class = { icon = "󰌗", hl = "Include" },
                        Property = { icon = "󰆧", hl = "@property" },
                        Enum = { icon = "󰒻", hl = "@number" },
                        Function = { icon = "󰊕", hl = "Function" },
                        String = { icon = "󰀬", hl = "String" },
                        Number = { icon = "󰎠", hl = "Number" },
                        Array = { icon = "󰅪", hl = "Type" },
                        Object = { icon = "󰅩", hl = "Type" },
                        Key = { icon = "󰌋", hl = "" },
                        Struct = { icon = "󰌗", hl = "Type" },
                        Operator = { icon = "󰆕", hl = "Operator" },
                        TypeParameter = { icon = "󰊄", hl = "Type" },
                        StaticMethod = { icon = "󰠄 ", hl = "Function" },
                },
        },
        filesystem = {
                filtered_items = {
                        visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
                        hide_dotfiles = false,
                        hide_gitignored = true,
                },
                follow_current_file = true, -- This will find and focus the file in the active buffer every
        },
        buffers = {
                follow_current_file = true, -- This will find and focus the file in the active buffer every
        },
})
