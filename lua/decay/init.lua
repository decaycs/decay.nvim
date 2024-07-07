---@diagnostic disable: lowercase-global
local M = {}
local core = require("decay.core")
local highlights = require("decay.highlights")

vim = vim

M.state = {}

-- choose a colorscheme automatically
local AUTO = "auto"

-- themes currently supported
local AVAILABLE_THEMES = {
  "default",
  "dark",
  "decayce",
  "cosmic" -- experimental
}

local function determine_style()
  local style = nil

  for key, _ in pairs(M.state) do
    if style == nil then
      for _, theme in ipairs(AVAILABLE_THEMES) do
        if key == theme then
          style = theme
        end
      end
    end
  end

  return style or "default"
end

function M.load(style, opts)
  style = style ~= AUTO and style or determine_style()

	if opts == nil then
    opts = M.get(style or "default")
	end

	-- disable bold
	vim.cmd("set t_md=")
	vim.opt.termguicolors = true

  -- reset background if using a style ~= "default"
  if style ~= "default" and vim.opt.background ~= "dark" then
    vim.opt.background = "dark"
  end

	vim.g.decay_style = style

	local cmp_opts = opts.cmp or { block_kind = false }

	vim.g.decay_cmp_block_kind = cmp_opts.block_kind == nil
    and true
    or cmp_opts.block_kind

	local colors = core.get_colors(style) -- getting the right palette

	if opts.palette_overrides then
		for key, color in pairs(opts.palette_overrides) do
			colors[key] = color
		end
	end

	highlights.highlight_all(colors, opts)
end

function M.get(style)
	vim.validate({
		style = { style, "string" },
	})
	if type(M.state[style]) ~= "table" then
		M.state[style] = {
			palette_overrides = {},
			cmp = {
				block_kind = false,
			},
			italics = {
				code = true,
				comments = false,
			},
		}
	end
	return M.state[style]
end

function M.set(style, opts)
	vim.validate({
		style = { style, "string" },
		opts = { opts, "table" },
	})
	M.state[style] = opts
end

function M.setup(opts)
	local style = "default"
	if type(opts) ~= "table" then
		opts = M.get(style)
	else
		if opts.style == nil then
			M.set(style, opts)
		else
			style = opts.style
			opts.style = nil
			M.set(style, opts)
		end
	end
end

return M
