local util = require("decay.util")

local M = {}

local function get_decayce()
	return {
		background = "#0d0f18",
		contrast = "#0b0d16",
		statusline_bg = "#0f111a",
		lighter = "#11131c",
		foreground = "#a5b6cf",
		cursorline = "#11131c",
		comments = "#2b2d36",
		cursor = "#a5b6cf",
		black = "#151720",
		red = "#dd6777",
		pink = "#f09ca7",
		orange = "#E59D8C",
		yellow = "#ecd3a0",
		green = "#90ceaa",
		blue = "#86aaec",
		teal = "#8BBCCB",
		magenta = "#c296eb",
		cyan = "#93cee9",
		white = "#cbced3",
		brightblack = "#2b2d36",
		brightred = "#e26c7c",
		brightgreen = "#95d3af",
		brightyellow = "#f1d8a5",
		brightblue = "#8baff1",
		brightmagenta = "#c79bf0",
		brightcyan = "#98d3ee",
		brightwhite = "#d0d3d8",
		lavender = "#a9acdb", -- TODO: Create own lavender for decayce
		accent = "#8baff1",
	}
end

local function get_cosmic_decay()
	return {
		background = "#12131c",
		contrast = "#101119",
		statusline_bg = "#1b1d2a",
		lighter = "#242637",
		foreground = "#A5B7D5",
		cursorline = "#2c2f44",
		comments = "#343750",
		cursor = "#A5B7D5",
		black = "#2c2f44",
		red = "#CA7E9E",
		orange = "#FFC19F",
		pink = "#f9c9cb",
		green = "#8FC8A8",
		yellow = "#EFD9B0",
		blue = "#8CACEF",
		teal = "#8dccb7",
		magenta = "#C7A5E5",
		sky = "#a2dee9",
		cyan = "#91CEDF",
		white = "#C1C4CB",
		brightblack = "#3b3f5b",
		brightred = "#E3879C",
		brightgreen = "#A1D4BB",
		brightyellow = "#F6E4B6",
		brightblue = "#94B4EF",
		brightmagenta = "#CC9EEF",
		brightcyan = "#A3D2E7",
		brightwhite = "#DDDFE4",
		lavender = "#a9acdb",
		accent = "#a9acdb",
		["@overrides"] = function(colors)
			return {
				["@field.lua"] = { fg = colors.sky },
				["@function.builtin"] = { fg = colors.blue },
				["@function.call"] = { fg = colors.lavender },
				["@method.call"] = { fg = colors.blue },
			}
		end,
	}
end

local function get_darker_decay()
	return {
		background = "#101419",
		contrast = "#0e1217",
		statusline_bg = "#13171c",
		lighter = "#1a1e23",
		foreground = "#b6beca",
		cursorline = "#242931",
		comments = "#4d5768",
		cursor = "#b6beca",
		black = "#242931",
		red = "#e05f65",
		orange = "#E89777",
		yellow = "#f1cf8a",
		pink = "#f6c9d4",
		green = "#78dba9",
		blue = "#70a5eb",
		teal = "#73C0C9",
		magenta = "#c68aee",
		cyan = "#74bee9",
		sky = "#91c7e7",
		white = "#b6beca",
		brightblack = "#485263",
		brightred = "#e5646a",
		brightgreen = "#94f7c5",
		brightyellow = "#f6d48f",
		brightblue = "#75aaf0",
		brightmagenta = "#cb8ff3",
		brightcyan = "#79c3ee",
		brightwhite = "#e3e6eb",
		lavender = "#a9acdb", -- TODO: Create own lavender for dark decay
		accent = "#78dba9",
	}
end

local function get_decay()
	return {
		background = "#171B20",
		contrast = "#15191d",
		statusline_bg = "#1a1e23",
		lighter = "#21262e",
		foreground = "#b6beca",
		cursorline = "#242931",
		comments = "#4d5768",
		cursor = "#b6beca",
		black = "#242931",
		red = "#e05f65",
		orange = "#E89777",
		yellow = "#f1cf8a",
		pink = "#f6c9d4",
		green = "#78dba9",
		blue = "#70a5eb",
		teal = "#73C0C9",
		magenta = "#c68aee",
		cyan = "#74bee9",
		sky = "#91c7e7",
		white = "#b6beca",
		brightblack = "#485263",
		brightred = "#e5646a",
		brightgreen = "#94f7c5",
		brightyellow = "#f6d48f",
		brightblue = "#75aaf0",
		brightmagenta = "#cb8ff3",
		brightcyan = "#79c3ee",
		brightwhite = "#e3e6eb",
		lavender = "#a9acdb", -- TODO: Create own lavender for dark decay
		accent = "#78dba9",
	}
end

local function get_light_decay()
	return {
		background = "#dee1e6",
		contrast = "#d9dce1",
		statusline_bg = "#d4d7dc",
		lighter = "#d4d7dc",
		foreground = "#101419",
		cursorline = "#cfd2d7",
		comments = "#4d5768",
		cursor = "#b6beca",
		black = "#c5c8cd",
		red = "#bd3c42",
		orange = "#d17b4f",
		yellow = "#ceac67",
		pink = "#f6c9d4",
		green = "#69b373",
		blue = "#4d82c8",
		teal = "#73C0C9",
		magenta = "#a367cb",
		cyan = "#519bc6",
		sky = "#91c7e7", -- TODO: Create an own sky color for light decay
		white = "#101419",
		brightblack = "#989ba0",
		brightred = "#c24147",
		brightgreen = "#6eb878",
		brightyellow = "#d3b16c",
		brightblue = "#5287cd",
		brightmagenta = "#a86cd0",
		brightcyan = "#56a0cb",
		brightwhite = "#1f2328",
		lavender = "#a9acdb", -- TODO: Create own lavender for light decay
		accent = "#69b373",
	}
end

function M.get_colors(style)
	if vim.o.background ~= "dark" then
		return get_light_decay()
	end

	local get_style = {
		default = get_decay,
		dark = get_darker_decay,
		decayce = get_decayce,
		cosmic = get_cosmic_decay,
	}

	function get_style:by_style(stylename)
    local generator = self[stylename]
    if not generator then
      generator = self.default
      print((
        '[decay warning]: defaulting to default palette, '
          .. stylename
          .. ' was not recognized as a valid palette name, valid palettes: '
          .. util:str_tbl_keys(self, {'by_style'})
      ))
    end

    return generator()
	end

	return get_style:by_style(style)
end

return M
