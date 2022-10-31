local M = {}

local function get_decayce()
  return {
    background = "#0d0f18",
    contrast = '#0b0d16',
    statusline_bg = '#0f111a',
    lighter = '#11131c',
    foreground = "#a5b6cf",
    cursorline = '#11131c',
    comments = '#2b2d36',
    cursor = "#a5b6cf",
    black = "#151720",
    red = "#dd6777",
    green = "#90ceaa",
    yellow = "#ecd3a0",
    blue = "#86aaec",
    magenta = "#c296eb",
    cyan = "#93cee9",
    white = "#cbced3",
    brightblack = "#1c1e27",
    brightred = "#e26c7c",
    brightgreen = "#95d3af",
    brightyellow = "#f1d8a5",
    brightblue = "#8baff1",
    brightmagenta = "#c79bf0",
    brightcyan = "#98d3ee",
    brightwhite = "#d0d3d8",
		accent = "#8baff1",
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
    black = "#242931",
    red = "#e05f65",
    green = "#78dba9",
    yellow = "#f1cf8a",
    blue = "#70a5eb",
    magenta = "#c68aee",
    cyan = "#74bee9",
    white = "#b6beca",
    brightblack = "#485263",
    brightred = "#e5646a",
    brightgreen = "#94f7c5",
    brightyellow = "#f6d48f",
    brightblue = "#75aaf0",
    brightmagenta = "#cb8ff3",
    brightcyan = "#79c3ee",
    brightwhite = "#e3e6eb",
		accent = "#78dba9",
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
    black = "#242931",
    red = "#e05f65",
    green = "#78dba9",
    yellow = "#f1cf8a",
    blue = "#70a5eb",
    magenta = "#c68aee",
    cyan = "#74bee9",
    white = "#b6beca",
    brightblack = "#485263",
    brightred = "#e5646a",
    brightgreen = "#94F7C5",
    brightyellow = "#f6d48f",
    brightblue = "#75aaf0",
    brightmagenta = "#cb8ff3",
    brightcyan = "#79c3ee",
    brightwhite = "#e3e6eb",
		accent = "#78dba9",
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
    black = "#c5c8cd",
    red = "#bd3c42",
    green = "#69b373",
    yellow = "#ceac67",
    blue = "#4d82c8",
    magenta = "#a367cb",
    cyan = "#519bc6",
    white = "#101419",
    brightblack = "#989ba0",
    brightred = "#c24147",
    brightgreen = "#6eb878",
    brightyellow = "#d3b16c",
    brightblue = "#5287cd",
    brightmagenta = "#a86cd0",
    brightcyan = "#56a0cb",
    brightwhite = "#1f2328",
		accent = "#69b373",
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
