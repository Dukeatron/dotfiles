-- Keymap API
local keymap = vim.api.nvim_set_keymap
local builtin = require('telescope.builtin')

-- telescope
vim.keymap.set('n', '<leader>pp', builtin.find_files, {})
vim.keymap.set('n', '<leader>fu', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
