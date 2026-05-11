local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("tex", {

	s("ff", {
		t("\\frac{"),
		i(1),
		t("}{"),
		i(2),
		t("}"),
	}),

	s("ii", {
		t("\\int_{"),
		i(1),
		t("}^{"),
		i(2),
		t("} "),
		i(3),
		t("\\, d"),
		i(4),
	}),

	s("sq", {
		t("\\sqrt{"),
		i(1),
		t("}"),
	}),
})
