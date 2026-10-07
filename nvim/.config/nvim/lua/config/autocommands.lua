vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight on yank",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- auto sync file changes
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "VimResume", "CursorHold" }, {
	group = vim.api.nvim_create_augroup("auto-sync-files", { clear = true }),
	pattern = "*",
	command = "silent! checktime",
})

-- ahhh, latex
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "tex", "plaintex" },
	callback = function()
		vim.keymap.set("n", "j", "gj", { buffer = true })
		vim.keymap.set("n", "k", "gk", { buffer = true })
	end,
})

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("user-lsp-config", { clear = true }),
	callback = function(e)
		local opts = { buffer = e.buf }
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, opts)

		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, opts)
		vim.keymap.set("n", "<C-e>", vim.diagnostic.open_float, opts)
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
	end,
})
