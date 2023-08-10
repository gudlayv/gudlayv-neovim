local status, wk = pcall(require, "which-key")
if not status then
        return
end

wk.register({
        f = {
                name = "Find",
                f = { "Find File" },
                b = { "Find Buffer" },
                h = { "Find Help" },
                w = { "Find Text" },
        },
        b = { "󰓩 Buffers" },
        e = { "File Manager" },
        o = { "Git status" },
        x = { "Close Buffer" },
        w = { "Save" },
        t = { name = "Terminal", f = { "Float terminal" }, h = { "Horizontal terminal" } },
        h = { "No highlight" },
        g = { name = "Git", b = "Branches", c = "Commits", s = "Status" },
        l = {
                name = "LSP",
                d = "Diagnostic",
                D = "Hover diagnostic",
                f = "Format",
                r = "Rename",
                a = "Action",
                s = "Symbol",
        },
}, { prefix = "<leader>" })
