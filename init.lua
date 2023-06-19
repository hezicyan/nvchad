vim.g.lua_snippets_path = vim.fn.stdpath("config") .. "/lua/custom/lua_snippets"

vim.api.nvim_set_option_value("relativenumber", true, {})
vim.api.nvim_set_option_value("scrolloff", 5, {})
vim.api.nvim_set_option_value("clipboard", "", {})

local line_limit = {
  java = 100,
  default = 80,
}
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    local colorcolumn = line_limit[vim.bo.filetype]
    if colorcolumn == nil then
      colorcolumn = line_limit.default
    end
    vim.api.nvim_set_option_value("colorcolumn", tostring(colorcolumn + 1), {})
  end,
})

require("custom.runner")
