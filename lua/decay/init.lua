---@diagnostic disable: lowercase-global
local M = {}
local core = require("decay.core")
local highlights = require("decay.highlights")

vim = vim

function M.setup(opts)
	if opts == nil then
		opts = {
			style = "normal",
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
	-- disable bold
	vim.cmd([[ set t_md= ]])
	vim.opt.termguicolors = true
	vim.g.decay_style = opts.style

	local cmp_opts = opts.cmp or { block_kind = false }

	vim.g.decay_cmp_block_kind = cmp_opts.block_kind == nil and true or cmp_opts.block_kind

	local colors = core.get_colors(opts.style) -- getting the right palette

	if opts.palette_overrides then
		for key, color in pairs(opts.palette_overrides) do
			colors[key] = color
		end
	end

	highlights.highlight_all(colors, opts)
end

return M
