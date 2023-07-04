local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require("custom.configs.null-ls")
        end,
      },
    },

    config = function()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
    dependencies = {
      --------------- EXTENSIONS ---------------
      "windwp/nvim-ts-autotag",
      "HiPhish/nvim-ts-rainbow2",
      "JoosepAlviste/nvim-ts-context-commentstring",
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
    dependencies = {
      --------------- EXTENSIONS ---------------
    },
  },

  {
    "folke/which-key.nvim",
    opts = overrides.whichkey,
  },

  {
    "NvChad/nvterm",
    opts = overrides.nvterm,
  },

  -------------------- CUSTOM PLUGINS --------------------

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup({
        mapping = { "jk" },
      })
    end,
  },

  {
    "ethanholz/nvim-lastplace",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("nvim-lastplace").setup({
        lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
        lastplace_ignore_filetype = { "gitcommit", "gitrebase", "svn", "hgcommit" },
        lastplace_open_folds = true,
      })
    end,
  },

  {
    "phaazon/hop.nvim",
    event = { "BufRead", "BufNewFile" },
    config = function()
      require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
    end,
  },

  {
    "folke/todo-comments.nvim",
    event = { "BufRead", "BufNewFile" },
    config = function()
      require("todo-comments").setup()
    end,
  },

  {
    "yamatsum/nvim-cursorline",
    event = { "BufEnter", "BufNewFile" },
    config = function()
      require("nvim-cursorline").setup({
        cursorline = {
          enable = false,
        },
        cursorword = {
          enable = true,
          min_length = 1,
          hl = { underline = true },
        },
      })
    end,
  },

  { "tpope/vim-repeat" },

  {
    "karb94/neoscroll.nvim",
    event = { "BufRead", "BufNewFile" },
    config = function()
      require("neoscroll").setup()
    end,
  },

  {
    "nvim-treesitter/playground",
    event = { "BufRead", "BufNewFile" },
  },

  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },

  {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    config = function()
      require("lspsaga").setup({
        ui = {
          code_action = "󰌵",
          incoming = "󰏷",
          outgoing = "󰏻",
        },
      })
    end,
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  },
}

return plugins
