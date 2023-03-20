# decay.nvim

This is a port of [Decay Colorscheme](https://github.com/decaycs) for neovim using lua as backend for this :3

![demonstration](./misc/demonstration.png)

## External plugins support

- Telescope
- Nvim Tree
- Tresitter
- Lsp
- Lsp saga
- Coc
- Bufferline
- Illuminate
- Diff
- Git signs
- Git gutter
- Lualine
- Indent-BlankLine

## Installation

U can use packer or vim-plug or something what u want.

### Packer

Put this in ur packer config:

```lua
use {'decaycs/decay.nvim', as = 'decay'}
```

Then execute `:PackerInstall` or `:PackerSync` to install decay :3

### Vim plug

Put this in ur config

```vim
Plug 'decaycs/decay.nvim', { 'as': 'decay' }
```

### Enable the theme

To enable the theme u can use the next lua code:

```lua
local present, decay = pcall(require, 'decay')

if not present then
  error('Can\'t import decay, make sure u installed it! :v')
end

decay.setup({
  style = 'default',
  nvim_tree = {
    contrast = true, -- or false to disable tree contrast
  },
})
```

or if u want a more simple example:

```lua
require('decay').setup({
  style = 'default',
  nvim_tree = {
    contrast = true, -- or false to disable tree contrast
  },
})
```

Or if you want you can try the darker palette! :3

```lua
require('decay').setup({
  style = 'dark',
  nvim_tree = {
    contrast = true -- or false to disable tree contrast,
  },
})
```

Or the light palette too :)

```lua
vim.o.background = 'light'

require('decay').setup({
  style = 'default', -- anyways will load the lighter palette, cuz `vim.o.background` is `light`
  nvim_tree = {
    contrast = true -- nvim tree contrast
  },
})
```

Or the colder decay palette: decayce:

```lua
require('decay').setup({
  style = 'decayce',
  nvim_tree = {
    contrast = true
  }
})
```

You can enable italics too!

```lua
require('decay').setup({
  style = 'default',
  italics = {
  code = true,
    comments = false -- to disable italic comments, replace to true to enable
  },
  nvim_tree = {
    contrast = true
  }
})
```

Or with vim script if u want (not able the posibility to disable tree contrast)

```vim
colorscheme decay
```

You can enable the darker palette too using vim script! :D

```vim
colorscheme dark-decay
```

You can enable decayce using vim script too:

```vim
colorscheme decayce
```

You can use the light palette too using vim script:

```vim
set background=light
colorscheme decay
```

## Cmp.nvim

By default the cmp.nvim integration has the kinds highlighted like blocks, u can disable that feature like this:

```lua
require('decay').setup {
  cmp = {
    block_kind = false,
  },
  -- SNIP
}
```

## Lualine

If you use lualine, you can enable the colors with something like this:

```lua
require('lualine').setup {
  options = {
    theme = 'decay',
  },
}
```

## Getting the colors

You can get the colors of decay using the decay-lua based api! Check at this :3

```lua
local core = require 'decay.core'

 -- style could be: default, dark, decayce or cosmic (experimental), if you want the lighter palette, just pass anyone but set the background to light before call this!
local colors = core.get_colors(<style>)

print(colors.background) -- shows the background of the selected palette!
```

## Overriding colors

You can override some highlights as you want too using the `.setup` method aswell, example:

```lua
local style = 'decayce' -- or another style of course
local colors = require('decay.core').get_colors(style)

require 'decay'.setup {
  style = style,
  cmp = {
    block_kind = true,
  },
  nvim_tree = {
    contrast = true,
  },
  italics = {
    code = true,
    comments = true,
  },
  override = {
    -- override property colors using treesitters highlights
    ["@property"] = { fg = colors.red },
  }
}
```

And if you want, you can also override the palette instead of specific highlights, example:

```lua
local style = 'decayce' -- or another style of course
local colors = require('decay.core').get_colors(style)

require 'decay'.setup {
  style = style,
  cmp = {
    block_kind = true,
  },
  nvim_tree = {
    contrast = true,
  },
  italics = {
    code = true,
    comments = true,
  },
  palette_overrides = {
    background = "#191C1C",
    contrast = "#161919",
    statusline_bg = "#222626",
    lighter = "#2f3434",
    foreground = "#B1CCC9",
    cursorline = "#2f3434",
    comments = "#3F4947",
    cursor = "#B1CCC9",
    black = "#2D3130",
    red = "#e88693",
    green = "#4FDAD1",
    yellow = "#ecd3a0",
    blue = "#97b1e2",
    magenta = "#caabe6",
    cyan = "#93cee9",
    white = "#cbced3",
    brightblack = "#2f3434",
    brightred = "#e88693",
    brightgreen = "#4FDAD1",
    brightyellow = "#ecd3a0",
    brightblue = "#97b1e2",
    brightmagenta = "#caabe6",
    brightcyan = "#98d3ee",
    brightwhite = "#B1CCC9",
    accent = "#4FDAD1",
  }
}
```
