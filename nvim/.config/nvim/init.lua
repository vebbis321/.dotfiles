require("config")

vim.lsp.enable({
	"lua_ls",
	"basedpyright",
	"marksman",
	"texlab",
})

vim.lsp.config("texlab", {
	on_attach = function(_, bufnr)
		vim.diagnostic.config({
			virtual_text = false,
		}, { bufnr = bufnr })
	end,
})

vim.diagnostic.config({
	virtual_text = true,
	-- update_in_insert = true,
})
