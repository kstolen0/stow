-- plugin for running tests within nvim
return {
  'vim-test/vim-test',
  dependencies = {
    'preservim/vimux',
  },
  config = function()
    vim.keymap.set('n', '<leader>tt', ':TestNearest<CR>', {})
    vim.keymap.set('n', '<leader>tf', ':TestNearest<CR>', {})
    vim.keymap.set('n', '<leader>ta', ':TestNearest<CR>', {})
    vim.keymap.set('n', '<leader>tl', ':TestNearest<CR>', {})
    vim.keymap.set('n', '<leader>tv', ':TestNearest<CR>', {})
    vim.cmd "let test#strategy = 'vimux'"
  end,
}
