-- notes plugin
return {
  'vimwiki/vimwiki',
  dependencies = {},
  event = 'BufEnter *.md',
  keys = { '<leader>ww' },
  lazy = false,
  init = function()
    vim.g.vimwiki_list = {
      {
        path = '~/vimwiki/',
        syntax = 'markdown',
        ext = 'md',
        global_ext = 0,
      },
    }
    vim.keymap.set('n', '<leader>tc', ':VimwikiToggleListItem<CR>', {})
  end,
}
