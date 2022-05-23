local core = require('decay.core')
local colors = core.get_colors()

local decay = {}

decay.normal = {
  a = { bg = colors.color4, fg = colors.background },
  b = { bg = colors.lighter, fg = colors.foreground },
  c = { bg = colors.background, fg = colors.foreground },
  z = { bg = colors.color2, fg = colors.background },
}

decay.insert = {
  a = { bg = colors.color5, fg = colors.background },
  b = { bg = colors.lighter, fg = colors.foreground },
  c = { bg = colors.background, fg = colors.foreground },
  z = { bg = colors.color2, fg = colors.background },
}

decay.command = {
  a = { bg = colors.color1, fg = colors.background },
  b = { bg = colors.lighter, fg = colors.foreground },
  c = { bg = colors.background, fg = colors.foreground },
  z = { bg = colors.color2, fg = colors.background },
}

decay.visual = {
  a = { bg = colors.color6, fg = colors.background },
  b = { bg = colors.lighter, fg = colors.foreground },
  c = { bg = colors.background, fg = colors.foreground },
  z = { bg = colors.color2, fg = colors.background },
}

decay.replace = {
  a = { bg = colors.color1, fg = colors.background },
  b = { bg = colors.lighter, fg = colors.foreground },
  c = { bg = colors.background, fg = colors.foreground },
  z = { bg = colors.color2, fg = colors.background },
}

decay.inactive = {
  a = { bg = colors.background, fg = colors.color7 },
  b = { bg = colors.lighter, fg = colors.foreground },
  c = { bg = colors.background, fg = colors.foreground },
}

return decay
