local M = {}
local config = require('decay.config')

local hi = function (...)
    vim.api.nvim_set_hl(0, ...)
end

function M.highlight_all(colors, opts)
  local base_highlights = config.highlights_base(colors)
  for group, properties in pairs(base_highlights) do
    hi(group, properties)
  end
  local ntree = opts.nvim_tree or { contrast = false }
  if ntree.contrast == true then
    hi('NvimTreeNormal', { bg = colors.contrast })
    hi('NvimTreeNormalNC', { bg = colors.contrast })
    hi('NvimTreeEndOfBuffer', { bg = colors.contrast, fg = colors.contrast })
    hi('NvimTreeEndOfBufferNC', { bg = colors.contrast, fg = colors.contrast })
    hi('NvimTreeVertSplit', { fg = colors.background, bg = colors.background })
  end
  if opts.italics.code == true then
    local tomkitalic = {
      'TSKeyword', 'TSConditional',
      'Keyword', 'TSKeywordFunction', 'Function',
      'Repeat', 'TSRepeat',
    }
    for _, item in ipairs(tomkitalic) do
      hi(item, { italic = true })
    end
  end
  if opts.italics.comments == true then
     local tomkitalic = {
       'TSComment', 'Comment'
     }
     for _, item in ipairs(tomkitalic) do
       hi(item, { italic = true })
     end
  end
  if vim.g.decay_cmp_block_kind then
     local tohi = {
        Pmenu = { fg = colors.foreground, bg = colors.contrast },
        PmenuSel = { bg = colors.lighter, fg = "NONE" },

        CmpItemAbbrDeprecated = { fg = colors.comments, bg = "NONE" },
        CmpItemAbbrMatch = { fg = colors.color4, bg = "NONE" },
        CmpItemAbbrMatchFuzzy = { fg = colors.color4, bg = "NONE" },
        CmpItemMenu = { fg = colors.color5, bg = "NONE" },

        CmpItemKindField = { fg = colors.background, bg = colors.color1 },
        CmpItemKindProperty = { fg = colors.background, bg = colors.color1 },
        CmpItemKindEvent = { fg = colors.background, bg = colors.color1 },

        CmpItemKindText = { fg = colors.background, bg = colors.color2 },
        CmpItemKindEnum = { fg = colors.background, bg = colors.color2 },
        CmpItemKindKeyword = { fg = colors.background, bg = colors.color2 },

        CmpItemKindConstant = { fg = colors.background, bg = colors.color3 },
        CmpItemKindConstructor = { fg = colors.background, bg = colors.color3 },
        CmpItemKindReference = { fg = colors.background, bg = colors.color3 },

        CmpItemKindFunction = { fg = colors.background, bg = colors.color5 },
        CmpItemKindStruct = { fg = colors.background, bg = colors.color5 },
        CmpItemKindClass = { fg = colors.background, bg = colors.color5 },
        CmpItemKindModule = { fg = colors.background, bg = colors.color5 },
        CmpItemKindOperator = { fg = colors.background, bg = colors.color5 },

        CmpItemKindVariable = { fg = colors.color0, bg = colors.color7 },
        CmpItemKindFile = { fg = colors.color0, bg = colors.color7 },

        CmpItemKindUnit = { fg = colors.background, bg = colors.color3 },
        CmpItemKindSnippet = { fg = colors.background, bg = colors.color3 },
        CmpItemKindFolder = { fg = colors.background, bg = colors.color3 },

        CmpItemKindMethod = { fg = colors.background, bg = colors.color4 },
        CmpItemKindValue = { fg = colors.background, bg = colors.color4 },
        CmpItemKindEnumMember = { fg = colors.background, bg = colors.color4 },

        CmpItemKindInterface = { fg = colors.background, bg = colors.color10 },
        CmpItemKindColor = { fg = colors.background, bg = colors.color10 },
        CmpItemKindTypeParameter = { fg = colors.background, bg = colors.color10 },
     }
     for group, properties in pairs(tohi) do
       hi(group, properties)
     end
  else
    local tohi = {
      Pmenu = { fg = colors.foreground, bg = colors.contrast },
      PmenuSel = { fg = colors.contrast, bg = colors.color4 },
      CmpDocumentationBorder = { fg = colors.foreground },
      CmpItemAbbr = { fg = colors.foreground },
      CmpItemAbbrDeprecated = { fg = colors.color3 },
      CmpItemAbbrMatch = { fg = colors.color4 },
      CmpItemAbbrMatchFuzzy = { fg = colors.color4 },
      CmpItemKind = { fg = colors.color4 },
      CmpItemMenu = { fg = colors.color2 },
    }
    for group, properties in pairs(tohi) do
      hi(group, properties)
    end
  end
end

return M
