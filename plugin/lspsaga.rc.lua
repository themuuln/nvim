local status, saga = pcall(require, "lspsaga")
if not status then
	return
end

saga.init_lsp_saga({
	server_filetype_map = {
		typescript = "typescript",
	},
})

local keymap = vim.keymap -- for conciseness

local opts = { noremap = true, silent = true }
keymap.set("n", "<C-j>", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)
keymap.set("n", "gd", "<Cmd>Lspsaga lsp_finder<CR>", opts)
keymap.set("i", "<C-k>", "<Cmd>Lspsaga signature_help<CR>", opts)
keymap.set("n", "gp", "<Cmd>Lspsaga peek_definition<CR>", opts)
keymap.set("n", "gr", "<Cmd>Lspsaga rename<CR>", opts)
