local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
	-- Greek letters ----------------------------------------------------------

	s({
		trig = ";a",
		dscr = "alpha",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\alpha")),

	s({
		trig = ";b",
		dscr = "beta",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\beta")),

	s({
		trig = ";g",
		dscr = "gamma",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\gamma")),

	s({
		trig = ";d",
		dscr = "delta",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\delta")),

	s({
		trig = ";e",
		dscr = "epsilon",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\epsilon")),

	s({
		trig = ";z",
		dscr = "zeta",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\zeta")),

	s({
		trig = ";h",
		dscr = "eta",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\eta")),

	s({
		trig = ";t",
		dscr = "theta",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\theta")),

	s({
		trig = ";k",
		dscr = "kappa",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\kappa")),

	s({
		trig = ";l",
		dscr = "lambda",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\lambda")),

	s({
		trig = ";m",
		dscr = "mu",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\mu")),

	s({
		trig = ";x",
		dscr = "xi",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\xi")),

	s({
		trig = ";p",
		dscr = "pi",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\pi")),

	s({
		trig = ";r",
		dscr = "rho",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\rho")),

	s({
		trig = ";s",
		dscr = "sigma",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\sigma")),

	s({
		trig = ";f",
		dscr = "phi",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\phi")),

	s({
		trig = ";c",
		dscr = "chi",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\chi")),

	s({
		trig = ";o",
		dscr = "omega",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\omega")),

	-- Capital Greek ----------------------------------------------------------

	s({
		trig = ";G",
		dscr = "Gamma",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\Gamma")),

	s({
		trig = ";D",
		dscr = "Delta",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\Delta")),

	s({
		trig = ";T",
		dscr = "Theta",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\Theta")),

	s({
		trig = ";L",
		dscr = "Lambda",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\Lambda")),

	s({
		trig = ";X",
		dscr = "Xi",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\Xi")),

	s({
		trig = ";P",
		dscr = "Pi",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\Pi")),

	s({
		trig = ";S",
		dscr = "Sigma",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\Sigma")),

	s({
		trig = ";F",
		dscr = "Phi",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\Phi")),

	s({
		trig = ";O",
		dscr = "Omega",
		snippetType = "autosnippet",
		wordTrig = false,
	}, t("\\Omega")),

	-- Common math ------------------------------------------------------------

	s(
		"ff",
		fmt("\\frac{{{}}}{{{}}}", {
			i(1),
			i(2),
		}),
		{
			dscr = "Fraction",
		}
	),

	s(
		"sq",
		fmt("\\sqrt{{{}}}", {
			i(1),
		}),
		{
			dscr = "Square root",
		}
	),

	s(
		"sum",
		fmt("\\sum_{{{}}}^{{{}}} {}", {
			i(1),
			i(2),
			i(3),
		}),
		{
			dscr = "Summation",
		}
	),

	s(
		"int",
		fmt("\\int_{{{}}}^{{{}}} {}\\, d{}", {
			i(1),
			i(2),
			i(3),
			i(4, "x"),
		}),
		{
			dscr = "Definite integral",
		}
	),

	s(
		"cint",
		fmt("\\oint_{{{}}}^{{{}}} {}\\, d{}", {
			i(1),
			i(2),
			i(3),
			i(4, "x"),
		}),
		{
			dscr = "Closed integral",
		}
	),

	s(
		"pdr",
		fmt("\\frac{{\\partial {}}}{{\\partial {}}}", {
			i(1, "f"),
			i(2, "x"),
		}),
		{
			dscr = "Partial derivative",
		}
	),

	s(
		"pdre",
		fmt("\\left.\\frac{{\\partial {}}}{{\\partial {}}}\\right|_{{{}}}", {
			i(1, "f"),
			i(2, "x"),
			i(3),
		}),
		{
			dscr = "Partial derivative evaluated at",
		}
	),

	s(
		"dr",
		fmt("\\frac{{d {}}}{{d {}}}", {
			i(1, "f"),
			i(2, "x"),
		}),
		{
			dscr = "Derivative",
		}
	),

	s(
		"pdrs",
		fmt("\\frac{{\\partial^2 {}}}{{\\partial {}^2}}", {
			i(1, "f"),
			i(2, "x"),
		}),
		{
			dscr = "Second partial derivative",
		}
	),

	s(
		"vec",
		fmt("\\vec{{{}}}", {
			i(1),
		}),
		{
			dscr = "Vector",
		}
	),

	s("nab", fmt("\\nabla", {}), {
		dscr = "Nabla",
	}),

	s(
		"abs",
		fmt("\\left|{}\\right|", {
			i(1),
		}),
		{
			dscr = "Absolute value",
		}
	),

	s(
		"norm",
		fmt("\\left\\|{}\\right\\|", {
			i(1),
		}),
		{
			dscr = "Norm",
		}
	),

	s(
		"br",
		fmt("\\left({}\\right)", {
			i(1),
		}),
		{
			dscr = "Parentheses",
		}
	),

	s(
		"env",
		fmt(
			[[
\\begin{{{}}}
  {}
\\end{{{}}}
]],
			{
				i(1, "equation"),
				i(2),
				i(3),
			}
		),
		{
			dscr = "LaTeX environment",
		}
	),
}
