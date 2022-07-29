local M = {}
local core = require('decay.core')
local highlights = require('decay.highlights')

function M.setup (opts)
  if opts == nil then
    opts = {
      style = 'normal',
      italics = {
        code = true,
        comments = false
      }
    }
  end
  -- disable bold
  vim.cmd [[ set t_md= ]]
  vim.opt.termguicolors = true
  vim.g.decay_style = opts.style

  local colors = core.get_colors(opts.style) -- getting the right palette

  highlights.highlight_all(colors, opts)
end

return M
