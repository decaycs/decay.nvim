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
		brightblack = "#262c46",
		brightred = "#e26c7c",
		brightgreen = "#95d3af",
		brightyellow = "#f1d8a5",
		brightblue = "#8baff1",
		brightmagenta = "#c79bf0",
		brightcyan = "#98d3ee",
		brightwhite = "#d0d3d8",
		lavender = "#a9acdb",
		accent = "#8baff1",
    brackets = "#485385",
	}
end

local function get_cosmic_decay()
	return {
		background = "#12131c",
		contrast = "#101119",
		statusline_bg = "#2d3046",
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
    brackets = "#5d638f",
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
		lavender = "#a9acdb",
		accent = "#75aaf0",
    brackets = "#6a7992",
	}
end

local function get_decay()
	return {
		background = "#171B20",
		contrast = "#15191d",
		statusline_bg = "#262d35",
		lighter = "#21262e",
		foreground = "#b6beca",
		cursorline = "#21262d",
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
		lavender = "#a9acdb",
		accent = "#78dba9",
    brackets = "#485263",
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
		cursor = "#101419",
		black = "#c5c8cd",
		red = "#903035",
		orange = "#a06d52",
		yellow = "#a08652",
		pink = "#8f5155",
		green = "#3c6843",
		blue = "#234d87",
		teal = "#73C0C9",
		magenta = "#7f529d",
		cyan = "#417998",
		sky = "#91c7e7",
		white = "#101419",
		brightblack = "#989ba0",
		brightred = "#903035",
		brightgreen = "#538b5b",
		brightyellow = "#a08652",
		brightblue = "#3e6699",
		brightmagenta = "#a86cd0",
		brightcyan = "#417998",
		brightwhite = "#1f2328",
		lavender = "#585285",
		accent = "#3c6843",
    brackets = "#72757b",
		["@overrides"] = function(colors)
			return {
        DiagnosticVirtualTextError = { bg = util.lighten(colors.red, 0.1), fg = colors.red },
        DiagnosticVirtualTextWarn = { bg = util.lighten(colors.yellow, 0.1), fg = colors.yellow },
        DiagnosticVirtualTextInfo = { bg = util.lighten(colors.blue, 0.1), fg = colors.blue },
        DiagnosticVirtualTextHint = { bg = util.lighten(colors.cyan, 0.15), fg = colors.cyan },
			}
		end,
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
