-- Install lazy package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
	{"EdenEast/nightfox.nvim"},
    {"tiagovla/tokyodark.nvim"},
	{'nvim-telescope/telescope.nvim', tag = '0.1.6',
      	dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {"nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    },
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {'nvim-tree/nvim-web-devicons'},
    {"nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
    },
    {'RRethy/vim-illuminate'},
    {'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
    	'windwp/nvim-autopairs',
    	event = "InsertEnter",
    	config = true,
    },
    {"folke/noice.nvim",
        event = "VeryLazy",
        opts = {},
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    },
    {'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        dependencies = { {'nvim-tree/nvim-web-devicons'}}
    },
    {"cbochs/grapple.nvim",
        dependencies = {{ "nvim-tree/nvim-web-devicons", lazy = true }},
    },
    {"xiyaowong/transparent.nvim"},
}

require("lazy").setup(plugins, opts)
