local M = {}
local core = require('decay.core')
local highlights = require('decay.highlights')

function M.setup (opts)
  if opts == nil then
    opts = { dark = false }
  end
  if opts.dark == nil then
    opts.dark = false -- default value
  end
  -- disable bold
  vim.cmd [[ set t_md= ]]
  vim.g.decay_dark_mode = opts.dark

  local colors = core.get_colors(opts.dark) -- getting the correct palette
  vim.opt.termguicolors = true
  highlights.highlight_all(colors, opts)
end

return M
