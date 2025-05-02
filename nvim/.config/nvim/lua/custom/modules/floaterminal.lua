local function open_floating_terminal()
  local buf = vim.api.nvim_create_buf(false, true)
  -- vim.api.nvim_set_option_value('buftype', 'terminal', { buf = buf })
  local width = vim.api.nvim_get_option 'columns'
  local height = vim.api.nvim_get_option 'lines'

  local win_width = math.ceil(width * 0.8)
  local win_height = math.ceil(height * 0.8)
  local row = math.ceil((height - win_height) / 2)
  local col = math.ceil((width - win_width) / 2)

  local opts = {
    relative = 'editor',
    width = win_width,
    height = win_height,
    row = row,
    col = col,
    style = 'minimal',
    border = 'solid',
  }

  local win = vim.api.nvim_open_win(buf, true, opts)

  vim.api.nvim_buf_set_keymap(buf, 'n', '<leader>t', ':close<CR>', { noremap = true, silent = true })
  vim.fn.termopen(os.getenv 'SHELL')
end

vim.api.nvim_create_autocmd({ 'TermOpen', 'BufWinEnter' }, {
  pattern = 'term://*',
  command = 'startinsert',
})

vim.api.nvim_create_user_command('Floaterm', open_floating_terminal, {})
