-- Defaults

local navic = require("nvim-navic")
local function navic_loc()
	if navic.is_available() then
		local loc = navic.get_location()
		if loc == nil or loc == "" then
			return ""
		end
		return loc
	end
	return ""
end

require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "filename", "diagnostics" },
		lualine_c = { { "FugitiveHead", icon = "" },
		--  {
		-- 	"buffers",
		-- 	mode = 3,
		-- }
	 },
		lualine_x = {
			"encoding",
			"fileformat",
			"filetype",
			{
				function()
					local linters = require("lint").get_running()
					if #linters == 0 then
						return "󰦕"
					end
					return "󱉶 " .. table.concat(linters, ", ")
				end,
			},
			-- {
			--     require("noice").api.status.search.get,
			--     cond = require("noice").api.status.search.has,
			--     color = { fg = "#ff9e64" },
			-- }
		},
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = { "filename" },
		lualine_b = {},
		lualine_c = { 
		-- 	{
		-- 	"buffers",
		-- 	mode = 3,
		-- }
	 },
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	winbar = {
		lualine_c = {
			{
				navic_loc,
				draw_empty = true,
			},
		},
	},
	extensions = {},
})
