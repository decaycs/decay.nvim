local M = {}
local hi = vim.highlight.create
local config = require('decay.config')

function M.highlight_all(colors, opts)
  local base_highlights = config.highlights_base(colors)
  for group, properties in pairs(base_highlights) do
    hi(group, properties, false)
  end
  local ntree = opts.nvim_tree or { contrast = false }
  if ntree.contrast == true then
    hi('NvimTreeNormal', { guibg = colors.contrast }, false)
    hi('NvimTreeNormalNC', { guibg = colors.contrast }, false)
    hi('NvimTreeEndOfBuffer', { guibg = colors.contrast, guifg = colors.contrast }, false)
    hi('NvimTreeEndOfBufferNC', { guibg = colors.contrast, guifg = colors.contrast }, false)
    hi('NvimTreeVertSplit', { guifg = colors.background, guibg = colors.background }, false)
  end
  if opts.italics.code == true then
    local tomkitalic = {
      'TSKeyword', 'TSConditional',
      'Keyword', 'TSKeywordFunction', 'Function',
      'Repeat', 'TSRepeat',
    }
    for _, item in ipairs(tomkitalic) do
      hi(item, { cterm = 'italic', gui = 'italic' }, false)
    end
  end
  if opts.italics.comments == true then
     local tomkitalic = {
       'TSComment', 'Comment'
     }
     for _, item in ipairs(tomkitalic) do
       hi(item, { cterm = 'italic', gui = 'italic' }, false)
     end
  end
end

return M
