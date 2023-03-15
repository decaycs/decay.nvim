local core = require('decay.core')
local colors = core.get_colors(vim.g.decay_style)

local decay = {}

decay.normal = {
  a = { bg = colors.blue, fg = colors.background },
  b = { bg = colors.lighter, fg = colors.foreground },
  c = { bg = colors.statusline_bg, fg = colors.statusline_bg },
}

decay.insert = {
  a = { bg = colors.accent, fg = colors.background },
  b = { bg = colors.lighter, fg = colors.foreground },
}

decay.command = {
  a = { bg = colors.red, fg = colors.background },
  b = { bg = colors.lighter, fg = colors.foreground },
}

decay.visual = {
  a = { bg = colors.cyan, fg = colors.background },
  b = { bg = colors.lighter, fg = colors.foreground },
}

decay.replace = {
  a = { bg = colors.red, fg = colors.background },
  b = { bg = colors.lighter, fg = colors.foreground },
}

decay.inactive = {
  a = { bg = colors.background, fg = colors.white },
  b = { bg = colors.lighter, fg = colors.foreground },
  c = { bg = colors.statusline_bg, fg = colors.foreground },
}

return decay
