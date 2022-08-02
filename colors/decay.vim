lua << EOF
require('decay').setup({
  style = 'normal',
  italics = {
    code = false,
    comments = false
  },
  nvim_tree = {
    contrast = true
  }
})
EOF
