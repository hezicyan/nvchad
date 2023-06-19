local code_runner_command = {
  ["c"] = "clang % -O2 -o %:r; ./%:r",
  ["cpp"] = "clang++ % -O2 -o %:r; ./%:r",
  ["python"] = "python3 %",
}

function _G:RunCode()
  vim.cmd("write")
  local cmd = code_runner_command[vim.bo.filetype]
  if cmd == nil then
    -- cmd = string.format("\\# Filetype %s is not supported", vim.bo.filetype)
    cmd = string.format("# Filetype %s is not supported", vim.bo.filetype)
  else
    cmd = vim.fn.expandcmd(cmd)
  end
  require("nvterm.terminal").send(cmd, "vertical")
  -- vim.cmd(string.format(
  --   [[
  --     ToggleTerm direction="vertical"
  --     TermExec direction="vertical" cmd="%s" go_back=0
  --   ]],
  --   cmd
  -- ))
end
