lua << EOF
require('decay').setup({
  style = 'default',
  italics = {
    code = false,
    comments = false
  },
  nvim_tree = {
    contrast = true
  }
})
EOF
