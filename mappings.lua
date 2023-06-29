---@type MappingsTable
local M = {}

M.general = {
  i = {
    ["<C-a>"] = { "<ESC>^i", "Beginning of line" },
    ["<C-d>"] = { "<Delete>", "Delete char under cursor" },
  },

  n = {
    -- telescope
    ["<leader>fk"] = { "<cmd>Telescope keymaps<CR>", "Find keymaps" },
    ["<leader>fl"] = { "<cmd>Telescope highlights<CR>", "Find highlights" },
    ["<leader>fu"] = {
      function()
        require("telescope").extensions.undo.undo()
      end,
      "Find highlights",
    },

    -- hop
    ["<leader>j"] = { "<cmd>HopWord<CR>", "Goto word" },
    ["<leader>k"] = { "<cmd>HopLine<CR>", "Goto line" },

    -- trouble
    ["gd"] = { "<cmd>TroubleToggle lsp_definitions<CR>", "LSP definition" },
    ["<leader>D"] = { "<cmd>TroubleToggle lsp_type_definitions<CR>", "LSP definition type" },
    ["gr"] = { "<cmd>TroubleToggle lsp_references<CR>", "LSP references" },
    ["<leader>lw"] = { "<cmd>TroubleToggle workspace_diagnostics<CR>", "Workspace diagnostics" },
    ["<leader>ld"] = { "<cmd>TroubleToggle document_diagnostics<CR>", "Document diagnostics" },

    -- lspsaga
    ["<leader>ca"] = { "<cmd>Lspsaga code_action<cr>", "Lsp code action" },

    -- todo-comments
    ["<leader>td"] = { "<cmd>TodoTrouble<CR>", "Todo list" },
    ["<leader>ft"] = { "<cmd>TodoTelescope<CR>", "Find todos" },

    -- code runner
    ["<F5>"] = { "<cmd>lua RunCode()<CR>", "Run current file" },
  },

  t = {
    ["<C-h>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-n><C-w>h", true, true, true), "Window left" },
    ["<C-l>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-n><C-w>l", true, true, true), "Window right" },
    ["<C-j>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-n><C-w>j", true, true, true), "Window down" },
    ["<C-k>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-n><C-w>k", true, true, true), "Window up" },
  },
}

return M
