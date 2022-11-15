require("git-blame-line").setup({
	git = {
		default_message = "Not committed yet",
		blame_format = "%an - %ar - %s", -- see https://git-scm.com/docs/pretty-formats
	},
	view = {
		left_padding_size = 5,
		enable_cursor_hold = false,
	},
})
