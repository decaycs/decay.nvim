lua << EOF
require('decay').setup({
  style = 'dark',
  italics = {
    code = false,
    comments = false
  },
  nvim_tree = {
    contrast = true
  }
})
EOF
