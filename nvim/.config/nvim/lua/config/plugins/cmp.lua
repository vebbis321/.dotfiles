return {
	"saghen/blink.cmp",

	dependencies = {
		"rafamadriz/friendly-snippets",
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*",
			build = "make install_jsregexp",
		},
	},

	enabled = true,
	version = "1.*",

	opts = {
		keymap = {
			preset = "default",

			["<C-p>"] = {},
			["<C-n>"] = {},
			["<C-k>"] = { "select_prev", "fallback" },
			["<C-j>"] = { "select_next", "fallback" },

			["<C-y>"] = {},
			["<CR>"] = { "select_and_accept", "fallback" },
		},

		appearance = {
			nerd_font_variant = "mono",
		},
		completion = { documentation = { auto_show = true } },

		snippets = {
			preset = "luasnip",
		},

		sources = {
			default = {
				"lsp",
				"path",
				"snippets",
				"buffer",
			},
		},

		fuzzy = {
			implementation = "prefer_rust_with_warning",
		},
	},

	opts_extend = { "sources.default" },
	config = function(_, opts)
		require("blink.cmp").setup(opts)

		require("luasnip.loaders.from_lua").lazy_load({
			paths = vim.fn.stdpath("config") .. "/snippets",
		})
	end,
}
