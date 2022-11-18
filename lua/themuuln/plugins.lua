local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end
--TODO

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
	-- use 'github/copilot.vim'

	use("lewis6991/gitsigns.nvim")
	use("dinhhuy258/git.nvim") -- For git blame & browse

	--
	--
	-- Themuuln's additional cfg
	--
	--

	use("tpope/vim-surround")
	use("vim-scripts/ReplaceWithRegister")

	-- Commenting stuff
	--
	-- way to speed up your Neovim startup time.
	use("lewis6991/impatient.nvim")
	-- commenting with gc
	use("numToStr/Comment.nvim")

	-- file explorer
	use("nvim-tree/nvim-tree.lua")

	-- autocompletion
	use("hrsh7th/cmp-path")

	-- snippets
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- configuring lsp server ADDITIONAL
	use("jose-elias-alvarez/typescript.nvim")

	-- ES7+ React/Redux/React-Native/JS snippets
	use({
		"dsznajder/vscode-es7-javascript-react-snippets",
		run = "yarn install --frozen-lockfile && yarn compile",
	})
	use("navarasu/onedark.nvim")
	--other
	use("JoosepAlviste/nvim-ts-context-commentstring")
	-- gitlens vim edition lol
	use({ "kessejones/git-blame-line.nvim" })
	-- rainbow parentheses
	use("p00f/nvim-ts-rainbow")
	-- toggleterm terminal in vim
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})
	-- lsp colors
	use("folke/lsp-colors.nvim")

	use("nvim-treesitter/nvim-treesitter-context")
	-- discord presence
	use("andweeb/presence.nvim")
end)
