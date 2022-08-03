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
  if vim.g.decay_cmp_block_kind then
     local tohi = {
        Pmenu = { guifg = colors.foreground, guibg = colors.contrast },
        PmenuSel = { guibg = colors.lighter, guifg = "NONE" },

        CmpItemAbbrDeprecated = { guifg = colors.comments, guibg = "NONE" },
        CmpItemAbbrMatch = { guifg = colors.color4, guibg = "NONE" },
        CmpItemAbbrMatchFuzzy = { guifg = colors.color4, guibg = "NONE" },
        CmpItemMenu = { guifg = colors.color5, guibg = "NONE" },

        CmpItemKindField = { guifg = colors.background, guibg = colors.color1 },
        CmpItemKindProperty = { guifg = colors.background, guibg = colors.color1 },
        CmpItemKindEvent = { guifg = colors.background, guibg = colors.color1 },

        CmpItemKindText = { guifg = colors.background, guibg = colors.color2 },
        CmpItemKindEnum = { guifg = colors.background, guibg = colors.color2 },
        CmpItemKindKeyword = { guifg = colors.background, guibg = colors.color2 },

        CmpItemKindConstant = { guifg = colors.background, guibg = colors.color3 },
        CmpItemKindConstructor = { guifg = colors.background, guibg = colors.color3 },
        CmpItemKindReference = { guifg = colors.background, guibg = colors.color3 },

        CmpItemKindFunction = { guifg = colors.background, guibg = colors.color5 },
        CmpItemKindStruct = { guifg = colors.background, guibg = colors.color5 },
        CmpItemKindClass = { guifg = colors.background, guibg = colors.color5 },
        CmpItemKindModule = { guifg = colors.background, guibg = colors.color5 },
        CmpItemKindOperator = { guifg = colors.background, guibg = colors.color5 },

        CmpItemKindVariable = { guifg = colors.color0, guibg = colors.color7 },
        CmpItemKindFile = { guifg = colors.color0, guibg = colors.color7 },

        CmpItemKindUnit = { guifg = colors.background, guibg = colors.color3 },
        CmpItemKindSnippet = { guifg = colors.background, guibg = colors.color3 },
        CmpItemKindFolder = { guifg = colors.background, guibg = colors.color3 },

        CmpItemKindMethod = { guifg = colors.background, guibg = colors.color4 },
        CmpItemKindValue = { guifg = colors.background, guibg = colors.color4 },
        CmpItemKindEnumMember = { guifg = colors.background, guibg = colors.color4 },

        CmpItemKindInterface = { guifg = colors.background, guibg = colors.color10 },
        CmpItemKindColor = { guifg = colors.background, guibg = colors.color10 },
        CmpItemKindTypeParameter = { guifg = colors.background, guibg = colors.color10 },
     }
     for group, properties in pairs(tohi) do
       hi(group, properties, false)
     end
  else
    local tohi = {
      Pmenu = { guifg = colors.foreground, guibg = colors.contrast },
      PmenuSel = { guifg = colors.contrast, guibg = colors.color4 },
      CmpDocumentationBorder = { guifg = colors.foreground },
      CmpItemAbbr = { guifg = colors.foreground },
      CmpItemAbbrDeprecated = { guifg = colors.color3 },
      CmpItemAbbrMatch = { guifg = colors.color4 },
      CmpItemAbbrMatchFuzzy = { guifg = colors.color4 },
      CmpItemKind = { guifg = colors.color4 },
      CmpItemMenu = { guifg = colors.color2 },
    }
    for group, properties in pairs(tohi) do
      hi(group, properties, false)
    end
  end
end

return M
