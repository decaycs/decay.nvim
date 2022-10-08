local M = {}

local function get_decayce()
  return {
    background = "#0d0f18",
    contrast = '#0b0d16',
    statusline_bg = '#0f111a',
    lighter = '#11131c',
    foreground = "#a5b6cf",
    cursorline = '#151720',
    comments = '#2b2d36',
    cursor = "#a5b6cf",
    color0 = "#151720",
    color1 = "#dd6777",
    color2 = "#90ceaa",
    color3 = "#ecd3a0",
    color4 = "#86aaec",
    color5 = "#c296eb",
    color6 = "#93cee9",
    color7 = "#cbced3",
    color8 = "#1c1e27",
    color9 = "#e26c7c",
    color10 = "#95d3af",
    color11 = "#f1d8a5",
    color12 = "#8baff1",
    color13 = "#c79bf0",
    color14 = "#98d3ee",
    color15 = "#d0d3d8",
  }
end

local function get_darker_decay()
  return {
    background = "#101419",
    contrast = '#0e1217',
    statusline_bg = '#13171c',
    lighter = '#1a1e23',
    foreground = "#b6beca",
    cursorline = '#242931',
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
    color9 = "#e5646a",
    color10 = "#94f7c5",
    color11 = "#f6d48f",
    color12 = "#75aaf0",
    color13 = "#cb8ff3",
    color14 = "#79c3ee",
    color15 = "#e3e6eb",
  }
end

local function get_decay()
  return {
    background = "#171B20",
    contrast = '#15191d',
    statusline_bg = '#1a1e23',
    lighter = '#21262e',
    foreground = "#b6beca",
    cursorline = '#242931',
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
    color9 = "#e5646a",
    color10 = "#94F7C5",
    color11 = "#f6d48f",
    color12 = "#75aaf0",
    color13 = "#cb8ff3",
    color14 = "#79c3ee",
    color15 = "#e3e6eb",
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

function M.get_colors(style)
   if vim.o.background == 'dark' then
      if style == 'dark' then
         return get_darker_decay()
      elseif style == 'decayce' then
         return get_decayce()
      else
         return get_decay()
      end
   else
      return get_light_decay()
   end
end

return M
