local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",

    "markdown",
    "markdown_inline",

    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",

    "c",
    "cpp",

    "python",

    "bash",
  },

  autotag = {
    enable = true,
  },
  rainbow = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    -- lua
    "lua-language-server",
    "selene",
    "stylua",

    -- web dev
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp
    "clangd",
    "cpplint",
    "clang-format",

    -- python
    "pyright",
    "pylint",
    "black",

    -- bash
    "bash-language-server",
    "shellcheck",
    "shfmt",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.telescope = {
  extensions = {},
  extensions_list = { "themes", "terms" },
}

M.whichkey = {
  icons = {
    separator = "",
  },
}

M.nvterm = {
  terminals = {
    type_opts = {
      vertical = {
        split_ratio = 0.4,
      },
    },
  },
}

return M
