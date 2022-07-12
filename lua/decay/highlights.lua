local M = {}
local hi = vim.api.nvim_set_hl
local config = require('decay.config')

function M.highlight_all(colors, opts)
  local base_highlights = config.highlights_base(colors)
  for group, properties in pairs(base_highlights) do
    hi(0, group, properties)
  end
  local ntree = opts.nvim_tree or { contrast = false }
  if ntree.contrast == true then
    hi(0, 'NvimTreeNormal', { background = colors.contrast })
    hi(0, 'NvimTreeNormalNC', { background = colors.contrast })
    hi(0, 'NvimTreeEndOfBuffer', { background = colors.contrast, foreground = colors.contrast })
    hi(0, 'NvimTreeEndOfBufferNC', { background = colors.contrast, foreground = colors.contrast })
    hi(0, 'NvimTreeVertSplit', { foreground = colors.background, background = colors.background })
  end
end

return M
