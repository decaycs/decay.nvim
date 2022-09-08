local M = {}
local config = require('decay.config')

function M.hi(...)
    vim.api.nvim_set_hl(0, ...)
end

local hi = M.hi

function M.bulk_hi (highlights)
    for group, properties in pairs(highlights) do
        hi(group, properties)
    end
end

function M.highlight_all(colors, opts)
    if not opts.italics then
        opts.italics = {
            code = true,
            comments = false,
        }
    end

    M.bulk_hi(config.highlights_base(colors, opts))

    local ntree = opts.nvim_tree or { contrast = false }

    if ntree.contrast == true then
        M.bulk_hi {
            NvimTreeNormal = { bg = colors.contrast },
            NvimTreeNormalNC = { bg = colors.contrast },
            NvimTreeEndOfBuffer = { bg = colors.contrast, fg = colors.contrast },
            NvimTreeEndOfBufferNC = { bg = colors.contrast, fg = colors.contrast },
            NvimTreeVertSplit = { fg = colors.background, bg = colors.background },
        }
    end

    if vim.g.decay_cmp_block_kind == true then
        M.bulk_hi {
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
    else
        M.bulk_hi {
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
    end
end

return M
