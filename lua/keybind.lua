vim.g.mapleader= ' '
vim.g.localleader= ' '
local bind = vim.keymap.set   
bind('n', '<C-l>', ':w<CR>:! m <CR>', {})     
bind('n', '<S-tab>', ':NvimTreeFindFileToggle<CR>', {})   
bind('n', 'e', 'lbvec', {})  
bind('n', ';', 'bNext', {})
bind('n', 'q', ':q!<CR>', {})  
bind('n', 'Q', 'bdelete',{})
--telescope
local builtin = require('telescope.builtin')
bind('n', '<leader>o', builtin.oldfiles, {})
bind('n', '<leader>g', builtin.live_grep, {})
bind('n', '<leader>b', builtin.buffers, {})
