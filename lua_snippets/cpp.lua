local ls = require("luasnip")
local ls_extras = require("luasnip.extras")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local r = ls_extras.rep

return {
  s("read", {
    i(1, "int"),
    t({ " Read() {", "\t" }),
    r(1),
    t({
      " res = 0;",
      "\tchar ch;",
      "\twhile (!isdigit(ch = getchar())) continue;",
      "\tdo {",
      "\t\tres = res * 10 + ch - '0';",
      "\t} while (isdigit(ch = getchar()));  // NOLINT",
      "\treturn res;",
      "}",
    }),
    i(0),
  }),

  s("readf", {
    t({
      "char ReadChar() {",
      "\tstatic const int kBufSize = 1e6;",
      "\tstatic char inbuf[kBufSize + 10];",
      "\tstatic char* now = inbuf;",
      "\tstatic char* lim = inbuf;",
      "\tif (now == lim) {",
      "\t\tlim = fread(inbuf, sizeof(char), kBufSize, stdin) + inbuf;",
      "\t\tnow = inbuf;",
      "\t}",
      "\treturn now == lim ? EOF : *(now++);",
      "}",
      "",
      "",
    }),
    i(1, "int"),
    t({ " Read() {", "\t" }),
    r(1),
    t({
      " res = 0;",
      "\tchar ch;",
      "\twhile (!isdigit(ch = ReadChar())) continue;",
      "\tdo {",
      "\t\tres = res * 10 + ch - '0';",
      "\t} while (isdigit(ch = ReadChar()));  // NOLINT",
      "\treturn res;",
      "}",
    }),
    i(0),
  }),

  s("readneg", {
    i(1, "int"),
    t({ " Read() {", "\t" }),
    r(1),
    t({
      " res = 0;",
      "\tbool neg = false;",
      "\tchar ch;",
      "\twhile (!isdigit(ch = getchar())) neg |= (ch == '-');",
      "\tdo {",
      "\t\tres = res * 10 + ch - '0';",
      "\t} while (isdigit(ch = getchar()));  // NOLINT",
      "\treturn neg ? -res : res;",
      "}",
    }),
    i(0),
  }),

  s("readnegf", {
    t({
      "char ReadChar() {",
      "\tstatic const int kBufSize = 1e6;",
      "\tstatic char inbuf[kBufSize + 10];",
      "\tstatic char* now = inbuf;",
      "\tstatic char* lim = inbuf;",
      "\tif (now == lim) {",
      "\t\tlim = fread(inbuf, sizeof(char), kBufSize, stdin) + inbuf;",
      "\t\tnow = inbuf;",
      "\t}",
      "\treturn now == lim ? EOF : *(now++);",
      "}",
      "",
      "",
    }),
    i(1, "int"),
    t({ " Read() {", "\t" }),
    r(1),
    t({
      " res = 0;",
      "\tbool neg = false;",
      "\tchar ch;",
      "\twhile (!isdigit(ch = ReadChar())) neg |= (ch == '-');",
      "\tdo {",
      "\t\tres = res * 10 + ch - '0';",
      "\t} while (isdigit(ch = ReadChar()));  // NOLINT",
      "\treturn neg ? -res : res;",
      "}",
    }),
    i(0),
  }),

  s("main", {
    t({
      "int main() {",
      "\t",
    }),
    i(0, "// Code here..."),
    t({
      "",
      "\treturn 0;",
      "}",
    }),
  }),

  s("freopen", {
    t('freopen("'),
    f(function(_, snip)
      return snip.env.TM_FILENAME_BASE
    end, {}),
    t({
      '.in", "r", stdin);',
      'freopen("',
    }),
    f(function(_, snip)
      return snip.env.TM_FILENAME_BASE
    end, {}),
    t({
      '.out", "w", stdout);',
      "",
    }),
  }),
}
