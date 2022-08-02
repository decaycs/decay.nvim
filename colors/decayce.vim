lua << EOF
require('decay').setup({
  style = 'decayce',
  italics = {
    code = false,
    comments = false
  },
  nvim_tree = {
    contrast = true
  }
})
EOF
