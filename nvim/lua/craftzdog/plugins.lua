local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
  use 'mfussenegger/nvim-dap'
	use("wbthomason/packer.nvim")
	use({ "catppuccin/nvim", as = "catppuccin" })
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
	-- use({
	-- 	"willothy/nvim-cokeline",
	-- 	requires = {
	-- 		"nvim-lua/plenary.nvim", -- Required for v0.4.0+
	-- 		"kyazdani42/nvim-web-devicons", -- If you want devicons
	-- 	},
	-- })
	use("nvim-lualine/lualine.nvim") -- Statusline
	use("nvim-lua/plenary.nvim") -- Common utilities
	use("onsails/lspkind-nvim") -- vscode-like pictograms
	use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
	use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's built-in LSP
	use("hrsh7th/nvim-cmp") -- Completion
	use("neovim/nvim-lspconfig") -- LSP
	use("jose-elias-alvarez/null-ls.nvim") -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	use({
		"nvimdev/lspsaga.nvim",
		after = "nvim-lspconfig",
		commit = "c7cc005ba2600c3eaf2bddb2b631ecc9d63b2ba8",
		config = function()
			require("lspsaga").setup({})
		end,
	})
	use("L3MON4D3/LuaSnip")
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	})
	use({
		"nvim-treesitter/nvim-treesitter-textobjects",
		after = "nvim-treesitter",
		requires = "nvim-treesitter/nvim-treesitter",
	})
	use("kyazdani42/nvim-web-devicons") -- File icons
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")
	use({ "numToStr/Comment.nvim", requires = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	} })
	use("norcalli/nvim-colorizer.lua")
	use("folke/zen-mode.nvim")
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})
	-- use 'github/copilot.vim'
	use("lewis6991/gitsigns.nvim")
	use({
		"anuvyklack/pretty-fold.nvim",
		config = function()
			require("pretty-fold").setup()
		end,
	})
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional
		},
		config = function()
			require("nvim-tree").setup({})
		end,
	})
	use({ "kevinhwang91/nvim-bqf" })
	use({ "kdheepak/lazygit.nvim" })
	use({ "mg979/vim-visual-multi" })
	use({ "psliwka/vim-smoothie" })
	-- use({ "ThePrimeagen/harpoon", branch = "master" })
	use({
		"chrisgrieser/nvim-various-textobjs",
		config = function()
			require("various-textobjs").setup({ useDefaultKeymaps = true })
		end,
	})
	use({ "chrisgrieser/nvim-spider" })
	use({
		"phaazon/hop.nvim",
		branch = "v2", -- optional but strongly recommended
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
		end,
	})
	use({
		"Exafunction/codeium.vim",
		config = function()
			-- Change '<C-g>' here to any keycode you like.
			vim.keymap.set("i", "<Tab>", function()
				return vim.fn["codeium#Accept"]()
			end, { expr = true })
			vim.keymap.set("i", "<M-;>", function()
				return vim.fn["codeium#CycleCompletions"](1)
			end, { expr = true })
			vim.keymap.set("i", "<M-,>", function()
				return vim.fn["codeium#CycleCompletions"](-1)
			end, { expr = true })
			vim.keymap.set("i", "<M-c>", function()
				return vim.fn["codeium#Clear"]()
			end, { expr = true })
		end,
	})

	use({ "mhartington/formatter.nvim" })
	use({
		"davidosomething/format-ts-errors.nvim",
	})
	use({
		"nvim-pack/nvim-spectre",
		requires = {
			"nvim-lua/plenary.nvim", -- Required for v0.4.0+
		},
	})
end)
