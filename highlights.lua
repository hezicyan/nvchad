-- white = "#D9E0EE",
-- darker_black = "#191828",
-- black = "#1E1D2D", --  nvim bg
-- black2 = "#252434",
-- one_bg = "#2d2c3c", -- real bg of onedark
-- one_bg2 = "#363545",
-- one_bg3 = "#3e3d4d",
-- grey = "#474656",
-- grey_fg = "#4e4d5d",
-- grey_fg2 = "#555464",
-- light_grey = "#605f6f",
-- red = "#F38BA8",
-- baby_pink = "#ffa5c3",
-- pink = "#F5C2E7",
-- line = "#383747", -- for lines like vertsplit
-- green = "#ABE9B3",
-- vibrant_green = "#b6f4be",
-- nord_blue = "#8bc2f0",
-- blue = "#89B4FA",
-- yellow = "#FAE3B0",
-- sun = "#ffe9b6",
-- purple = "#d0a9e5",
-- dark_purple = "#c7a0dc",
-- teal = "#B5E8E0",
-- orange = "#F8BD96",
-- cyan = "#89DCEB",
-- statusline_bg = "#232232",
-- lightbg = "#2f2e3e",
-- pmenu_bg = "#ABE9B3",
-- folder_bg = "#89B4FA",
-- lavender = "#c7d1ff",

local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = { italic = true },

  StorageClass = {
    fg = "purple",
    italic = true,
  },

  ["@namespace"] = {
    fg = "pink",
    italic = true,
  },

  ["@property"] = { italic = true },

  Include = {
    fg = "purple",
    italic = true,
  },

  Operator = { bold = true },
  ["@operator"] = { bold = true },

  Boolean = {
    bold = true,
    italic = true,
  },

  Function = { bold = true },
  ["@function"] = { bold = true },

  Conditional = {
    bold = true,
    italic = true,
  },

  ["@constant.builtin"] = { italic = true },

  Repeat = {
    fg = "purple",
    bold = true,
    italic = true,
  },

  Keyword = { italic = true },
  ["@keyword"] = { italic = true },
  ["@keyword.return"] = { italic = true },
  ["@keyword.function"] = { italic = true },
  ["@keyword.operator"] = { italic = true },

  ["@attribute"] = {
    fg = "teal",
    italic = true,
  },

  DiffChange = { fg = "nord_blue" },
}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },

  ["@type.qualifier"] = {
    fg = "purple",
    italic = true,
  },

  TSRainbowRed = { fg = "red" },
  TSRainbowYellow = { fg = "yellow" },
  TSRainbowBlue = { fg = "blue" },
  TSRainbowOrange = { fg = "orange" },
  TSRainbowGreen = { fg = "green" },
  TSRainbowViolet = { fg = "purple" },
  TSRainbowCyan = { fg = "cyan" },

  DiagnosticUnderlineError = {
    sp = "red",
    undercurl = true,
  },
  DiagnosticUnderlineWarn = {
    sp = "yellow",
    undercurl = true,
  },
  DiagnosticUnderlineInfo = {
    sp = "blue",
    undercurl = true,
  },
  DiagnosticUnderlineHint = {
    sp = "purple",
    undercurl = true,
  },
  DiagnosticUnderlineOk = {
    sp = "green",
    undercurl = true,
  },
}

return M
