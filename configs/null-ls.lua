local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
  -- webdev stuff
  formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  formatting.prettier.with({ filetypes = { "html", "markdown", "css" } }), -- so prettier works only on these filetypes

  -- lua
  formatting.stylua.with({ extra_args = { "--indent-type=Spaces", "--call-parentheses=Always" } }),
  diagnostics.selene,

  -- cpp
  formatting.clang_format.with({ extra_args = { "-style=Google" } }),
  diagnostics.cpplint,

  -- python
  formatting.black,
  diagnostics.pylint,

  -- bash
  formatting.shfmt.with({ extra_args = { "-i", "2" } }),
  diagnostics.shellcheck,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup({
  debug = true,
  sources = sources,
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ async = false })
        end,
      })
    end
  end,
})
