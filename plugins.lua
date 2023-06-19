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
      require("better_escape").setup()
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
    "itchyny/vim-cursorword",
    event = { "BufEnter", "BufNewFile" },
    config = function()
      vim.api.nvim_command("augroup user_plugin_cursorword")
      vim.api.nvim_command("autocmd!")
      vim.api.nvim_command("autocmd FileType NvimTree,lspsagafinder,dashboard,vista let b:cursorword = 0")
      vim.api.nvim_command("autocmd WinEnter * if &diff || &pvw | let b:cursorword = 0 | endif")
      vim.api.nvim_command("autocmd InsertEnter * let b:cursorword = 0")
      vim.api.nvim_command("autocmd InsertLeave * let b:cursorword = 1")
      vim.api.nvim_command("augroup END")
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
