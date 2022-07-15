local M = {}

local function get_darker_decay()
  return {
    background = "#101419",
    contrast = '#0e1217',
    statusline_bg = '#13171c',
    lighter = '#1a1e23',
    foreground = "#b6beca",
    cursorline = '#15191e',
    comments = '#4d5768',
    cursor = "#b6beca",
    color0 = "#242931",
    color1 = "#e05f65",
    color2 = "#78dba9",
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
    comments = '#4d5768',
    cursor = "#b6beca",
    color0 = "#242931",
    color1 = "#e05f65",
    color2 = "#78dba9",
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

local function get_light_decay()
  return {
    background = "#dee1e6",
    contrast = '#d9dce1',
    statusline_bg = '#d4d7dc',
    lighter = '#d4d7dc',
    foreground = "#101419",
    cursorline = '#cfd2d7',
    comments = '#4d5768',
    cursor = "#b6beca",
    color0 = "#c5c8cd",
    color1 = "#bd3c42",
    color2 = "#69b373",
    color3 = "#ceac67",
    color4 = "#4d82c8",
    color5 = "#a367cb",
    color6 = "#519bc6",
    color7 = "#101419",
    color8 = "#989ba0",
    color9 = "#c24147",
    color10 = "#6eb878",
    color11 = "#d3b16c",
    color12 = "#5287cd",
    color13 = "#a86cd0",
    color14 = "#56a0cb",
    color15 = "#1f2328",
  }
end

function M.get_colors(dark)
  if vim.o.background == 'dark' then
    dark = vim.g.decay_dark_mode or false
    if dark then
      return get_darker_decay()
    else
      return get_decay()
    end
  else
    return get_light_decay()
  end
end

return M
