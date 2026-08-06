return {
	"lervag/wiki.vim",
	dependencies = {
		"bullets-vim/bullets.vim",
	},
	init = function()
		vim.g.name = "wiki"
		vim.g.wiki_root = "~/wiki"

		local keymap = vim.keymap
		keymap.set("n", "<C-Space>", "<Plug>(bullets-toggle-checkbox)<CR>0")

		local templates = require("config.modules.markdown_templates")

		vim.api.nvim_create_user_command("Diary", function()
			templates.open_diary()
		end, {})

		keymap.set("n", "<Leader>w<leader>w", ":Diary<CR>", { noremap = true, silent = true })
		keymap.set("n", "<Leader>kg", ":e ~/wiki/knowledge_gaps.md", { noremap = true, silent = true })
		keymap.set("n", "<Leader>sp", ":e ~/wiki/scratchpad.md<CR>", { noremap = true, silent = true })
		keymap.set("n", "<Leader>td", ":e ~/wiki/todo.md<CR>", { noremap = true, silent = true })
	end,
}
