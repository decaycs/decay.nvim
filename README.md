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
- Ident-BlankLine

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
  dark = false,
  nvim_tree = {
    contrast = true, -- or false to disable tree contrast
  },
})
```

or if u want a more simple example:

```lua
require('decay').setup({
  dark = false,
  nvim_tree = {
    contrast = true, -- or false to disable tree contrast
  },
})
```

Or if you want you can try the darker palette! :3

```lua
require('decay').setup({
  dark = true,
  nvim_tree = {
    contrast = true -- or false to disable tree contrast,
  },
})
```

Or with vim script if u want (not able the posibility to disable tree contrast)

```vim
colorscheme decay
```

You can enable the darker palette too using vim script! :D

```sh
colorscheme dark-decay
```

## Lualine

This decay port has lualine integration, enable it! (if you use lualine lmao :D)

```lua
require('lualine').setup {
  options = {
    theme = 'decay',
    -- <SNIP>
  },
  -- <SNIP>
}
```

## Getting the colors

U can get the colors of decay using the decay-lua based api! Check at this :3

```lua
local colors = require('decay.core').get_colors(false) -- or true to get the darker palette

print(colors.background) -- will output #171B20 or #101419 if you're using the darker palette
```
