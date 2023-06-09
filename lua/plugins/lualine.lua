local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local status1, lsp_progress = pcall(require, "lsp-progress")
if not status1 then
	return
end

lualine.setup({
	options = {
		icons_enabled = true,
		theme = "dracula",
		section_separators = { left = "", right = "" },
		component_separators = { left = "", right = "" },
		disabled_filetypes = {},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch" },
		lualine_c = {
			{
				"filename",
				file_status = true, -- display file status
				path = 0, -- just filename
			},
		},
		lualine_x = {
			{
				lsp_progress.progress,
				"diagnostics",
				sources = { "nvim_diagnostic" },
				symbols = { error = " ", warn = " ", info = " ", hint = " " },
			},
			"encoding",
			"filetype",
		},
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {
			{
				"filename",
				file_status = true,
				path = 1, -- relative path
			},
		},
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extentions = { "fugitive" },
})
