local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://kgithub.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)
require("lazy").setup({
  {"catppuccin/nvim", lazy = false, priority = 1000}, --Theme
  {"nvim-tree/nvim-tree.lua",dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    lazy = true,
  },
  {"neovim/nvim-lspconfig", lazy = true},
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate", lazy = true},
  {"hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", --neovim 内置 LSP 客户端的 nvim-cmp 源
      "hrsh7th/cmp-buffer", --从buffer中智能提示
      "hrsh7th/cmp-path", --自动提示硬盘上的文件
      "hrsh7th/cmp-cmdline",
      "onsails/lspkind-nvim", --美化自动完成提示信息
    },
    event = "VeryLazy",
},
  -- 代码段提示
  {"L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
      "rafamadriz/friendly-snippets" --代码段合集
    },
    event = "VeryLazy",
  },
	
  {"windwp/nvim-autopairs", event = "VeryLazy"},
  {"nvim-telescope/telescope.nvim", tag = "0.1.1",
      dependencies = { "nvim-lua/plenary.nvim" },
      event = "VeryLazy",
  },
  {'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'hyper',
    config = {
      week_header = {
       enable = true,
      },
      shortcut = {
        { desc = ' Lazy', group = '@property', action = 'Lazy', key = 'u' },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
      },
    },
      }    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  }
})
