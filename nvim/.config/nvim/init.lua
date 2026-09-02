require("config")

vim.lsp.enable({
	"lua_ls",
	"basedpyright",
	"marksman",
	"texlab",
})

vim.diagnostic.config({
	virtual_text = true,
	-- update_in_insert = true,
})
