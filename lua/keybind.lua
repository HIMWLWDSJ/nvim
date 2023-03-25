vim.g.mapleader= ' '
vim.g.localleader= ' '
local bind = vim.api.nvim_set_keymap
local opt = {noremap = true,  silent = true}
bind('n', '<leader>e', ':NvimTreeFindFileToggle<CR>', opt)   
bind('n', '<leader>c', ':NvimTreeClose<CR>:NvimTreeOpen ~/.config/nvim<CR>', opt)   
bind('n', '<leader>m', ':edit ~/cla/main.c<CR>', opt)   
bind('n', '<leader>x', ':BufferLinePickClose<CR>', opt)   
bind('n', '<leader>j', ':BufferLinePick<CR>', opt)   
vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, opt)
bind('n', '<C-q>', ':wq<CR>', opt)   
bind('n', '<M-i>', '?#include<CR>o#include <', opt)   
bind('n', '<M-p>', 'oprintf("%s\\n", );<esc>hi', opt)   
bind('n', '.', 'd$', opt)   
bind('n', ';', '$a', opt)   
bind('n', '[', ':BufferLineCyclePrev<CR>', opt)  -- <-
bind('n', ']', ':BufferLineCycleNext<CR>', opt)  -- ->
bind('n', '\\', 'I//<esc>', opt)  
bind('n', '|', '0f/xx', opt)  
bind('n', 'f', '<enter>c', opt)  
