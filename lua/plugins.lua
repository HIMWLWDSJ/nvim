vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'  -- Packer can manage itself
  use 'catppuccin/nvim' --Theme
  use {     --FileManager
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}   --BufferLine
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }  --code highlight
  use {
  "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-nvim-lsp", --neovim 内置 LSP 客户端的 nvim-cmp 源
      --以下插件可选，可以根据个人喜好删减
      "onsails/lspkind-nvim", --美化自动完成提示信息
      "hrsh7th/cmp-buffer", --从buffer中智能提示
      "hrsh7th/cmp-nvim-lua", --nvim-cmp source for neovim Lua API.
      "hrsh7th/cmp-path", --自动提示硬盘上的文件
      "hrsh7th/cmp-cmdline",
    }
}
  -- 代码段提示
  use {
  "L3MON4D3/LuaSnip",
    requires = {
      "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
      "rafamadriz/friendly-snippets" --代码段合集
    }
}
	
use {
    "windwp/nvim-autopairs"
}

end)
