local M = {}

local function get_darker_decay()
  return {
    background = "#101419",
    contrast = '#0e1217',
    statusline_bg = '#13171c',
    lighter = '#1a1e23',
    foreground = "#b6beca",
    cursorline = '#1a1e23',
    cursor = "#b6beca",
    color0 = "#242931",
    color1 = "#e05f65",
    color2 = "#73c291",
    color3 = "#f1cf8a",
    color4 = "#70a5eb",
    color5 = "#c68aee",
    color6 = "#74bee9",
    color7 = "#b6beca",
    color8 = "#485263",
    color9 = "#e05f65",
    color10 = "#7ddac5",
    color11 = "#f1cf8a",
    color12 = "#70a5eb",
    color13 = "#c68aee",
    color14 = "#74bee9",
    color15 = "#b6beca",
  }
end

local function get_decay()
  return {
    background = "#171B20",
    contrast = '#15191d',
    statusline_bg = '#1a1e23',
    lighter = '#21262e',
    foreground = "#b6beca",
    cursorline = '#1a1e24',
    cursor = "#b6beca",
    color0 = "#242931",
    color1 = "#e05f65",
    color2 = "#73c291",
    color3 = "#f1cf8a",
    color4 = "#70a5eb",
    color5 = "#c68aee",
    color6 = "#74bee9",
    color7 = "#b6beca",
    color8 = "#485263",
    color9 = "#e05f65",
    color10 = "#7ddac5",
    color11 = "#f1cf8a",
    color12 = "#70a5eb",
    color13 = "#c68aee",
    color14 = "#74bee9",
    color15 = "#b6beca",
  }
end

function M.get_colors(dark)
  dark = vim.g.decay_dark_mode or false
  if dark then
    return get_darker_decay()
  else
    return get_decay()
  end
end

return M
