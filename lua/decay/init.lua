local M = {}
local core = require('decay.core')
local highlights = require('decay.highlights')

function M.setup (opts)
  if opts == nil then
    opts = {}
  end
  -- disable bold
  vim.cmd [[ set t_md= ]]
  local colors = core.get_colors()
  vim.opt.termguicolors = true
  highlights.highlight_all(colors, opts)
end

return M
