require("config")

vim.lsp.enable({
	"lua_ls",
	"basedpyright",
	"marksman",
	"texlab",
})

vim.lsp.config("texlab", {
	on_attach = function()
		vim.diagnostic.config({
			virtual_text = false,
		})
	end,
})

vim.diagnostic.config({
	virtual_text = true,
	-- update_in_insert = true,
})
