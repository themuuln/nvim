local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lualine/lualine.nvim") -- Statusline
	use({
		"williamboman/nvim-lsp-installer",
		"neovim/nvim-lspconfig",
	})
	use("nvim-lua/plenary.nvim") -- Common utilities
	use("onsails/lspkind-nvim") -- vscode-like pictograms
	use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
	use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's built-in LSP
	use("hrsh7th/nvim-cmp") -- Completion
	use("jose-elias-alvarez/null-ls.nvim") -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
	use("jayp0521/mason-null-ls.nvim")
	use("MunifTanjim/prettier.nvim") -- Prettier Plugin for Neovim's built-in
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	use({ "glepnir/lspsaga.nvim", branch = "main" }) -- LSP UIs
	use("L3MON4D3/LuaSnip")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("kyazdani42/nvim-web-devicons") -- File icons
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")
	use("norcalli/nvim-colorizer.lua")
	use("folke/zen-mode.nvim")
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})
	use("akinsho/nvim-bufferline.lua")
	use("lewis6991/gitsigns.nvim")
	use("dinhhuy258/git.nvim") -- For git blame & browse

	-- Themuuln's additional cfg

	use("tpope/vim-surround")
	use("vim-scripts/ReplaceWithRegister")

	use("lewis6991/impatient.nvim") -- way to speed up your Neovim startup time.
	use("numToStr/Comment.nvim") -- commenting with gc
	use("nvim-tree/nvim-tree.lua") -- file explorer
	use("hrsh7th/cmp-path") -- autocompletion
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets") -- snippets
	use("jose-elias-alvarez/typescript.nvim") -- configuring lsp server ADDITIONAL
	use({
		"dsznajder/vscode-es7-javascript-react-snippets",
		run = "yarn install --frozen-lockfile && yarn compile",
	}) -- ES7+ React/Redux/React-Native/JS snippets
	use("navarasu/onedark.nvim") -- onedark theme
	--other
	use("JoosepAlviste/nvim-ts-context-commentstring") -- commenting
	use({ "kessejones/git-blame-line.nvim" }) -- gitlens vim edition lol
	use("p00f/nvim-ts-rainbow") -- rainbow parentheses
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	}) -- toggleterm terminal in vim
	use("folke/lsp-colors.nvim") -- lsp colors
	use("nvim-treesitter/nvim-treesitter-context")
	use("lukas-reineke/indent-blankline.nvim") -- indent blankline
	use("karb94/neoscroll.nvim") -- smooth scrolling
	use({
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup({})
		end,
	})
end)
