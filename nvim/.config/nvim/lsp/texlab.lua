return {
	cmd = { "texlab" },
	filetypes = { "tex", "plaintex", "bib" },
	root_markers = { ".git", ".latexmkrc", "latexmkrc", ".texlabroot", "texlabroot", "Tectonic.toml" },
	settings = {
		texlab = {
			build = {
				executable = "", -- Disable building via LSP
				onSave = false,
			},
			forwardSearch = {
				executable = "", -- Let VimTeX handle the PDF viewer
			},
			chktex = {
				onEdit = true, -- Nice to have real-time linting!
			},
			-- Keep the rest of your formatting preferences
		},
	},
}
