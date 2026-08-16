local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
	s({ trig = ";a", snippetType = "autosnippet", desc = "alpha", wordTrig = false }, { t("\\alpha") }),
	s({ trig = '"', snippetType = "autosnippet", desc = "quotation marks" }, fmta([[``<>'' ]], { i(1, "text") })),
}
