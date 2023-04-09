vim.g.mapleader= ' '
vim.g.localleader= ' '
local bind = vim.api.nvim_set_keymap
local opt = {noremap = true,  silent = true}
bind('n', '<leader>e', ':NvimTreeFindFileToggle<CR>', opt)   
bind('n', '<leader>c', ':NvimTreeClose<CR>:NvimTreeOpen ~/.config/nvim<CR>', opt)   
bind('n', '<C-l>', ':w<CR>:! m && ./out<CR>', opt)   
bind('n', '<M-i>', 'ggo#include <', opt)   
bind('n', ';', 'A;<CR>', opt) 
bind('n', 'e', 'lbvec', opt)  
bind('n', 'w', 'lbve', opt)  
bind('n', 'q', ':q!<CR>', opt)  
--telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
