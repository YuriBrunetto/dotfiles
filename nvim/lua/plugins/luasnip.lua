local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

local prettier_config = [[
{
  "arrowParens": "avoid",
  "singleQuote": true,
  "bracketSpacing": true,
  "endOfLine": "lf",
  "semi": false,
  "tabWidth": 2,
  "trailingComma": "none",
  "quoteProps": "preserve"
}
]]

ls.add_snippets("json", {
  s("prettier-config", {
    t(prettier_config),
  }),
})

return {}
