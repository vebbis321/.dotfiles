return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({
			"python",
			"c",
			"lua",
			"bash",
			"vim",
			"vimdoc",
			"query",
			"markdown",
			"markdown_inline",
			"latex",
		})
		require("nvim-treesitter.config").setup({
			auto_install = false,
			highlight = {
				enable = true,
			},
		})
		vim.treesitter.language.register("markdown", "vimwiki")
	end,
}
