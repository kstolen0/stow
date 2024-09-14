
vim.keymap.set('n', 'j', 'jzz')
vim.keymap.set('n', 'k', 'kzz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'G', 'Gzz')
vim.keymap.set('n', '``', '``zz')
vim.keymap.set('n', '`.', '`.zz')
vim.keymap.set('n', '%', '%zz')

vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

-- first option taken from here: https://gitlab.com/linuxdabbler/dotfiles/-/blob/main/.config/nvim/init.lua?ref_type=heads
-- second option is my own thinking.. not too sure what the differenve is. the Behaviour seems the same
vim.keymap.set('v', 'K', ":m '>-2<CR>gv=gv")
vim.keymap.set('v', 'J', "$:'<,'>m+1<CR>v")

-- yanking controls
vim.keymap.set('n', 'yp', '"0p')
vim.keymap.set('n', 'cp', '"+p')

-- upper and lowercase word
vim.keymap.set('n', '<leader>uc', 'gUiw')
vim.keymap.set('n', '<leader>lc', 'guiw')

-- saving controls
vim.keymap.set('i', 'kj', '<Esc>:w<CR>')
vim.keymap.set('i', '<Esc>', '<Esc>:w<CR>')
vim.keymap.set('n', '<leader>kj', 'kj:w<CR>')

-- manage terminal
vim.keymap.set('n', '<leader>t', function()
  vim.cmd.terminal()
end, { desc = 'open terminal' })

-- close current buffer
vim.keymap.set('n', '<leader>bd', function()
  vim.cmd.bdelete()
end, { desc = 'delete current buffer' })

-- spellcheck
vim.keymap.set('n', 'sc', 'z=', { desc = 'Check spelling under current word' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', 'kj', '<C-\\><C-n>', { desc = 'Exit terminal mode' })


