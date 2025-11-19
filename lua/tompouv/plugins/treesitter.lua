return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	event = { "BufReadPre", "BufNewFile" },
	branch = "main",
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},

	config = function()
		local treesitter = require("nvim-treesitter")

		local ensure_installed = {
			"json",
			"javascript",
			"typescript",
			"tsx",
			"lua",
			"python",
			"bash",
			"c",
			"dockerfile",
			"html",
			"css",
			"gitignore",
			"vim",
			"vimdoc",
			"yaml",
			"sql",
			"ruby",
			"rust",
			"markdown",
			"markdown_inline",
		}

		treesitter.install(ensure_installed)
		-- configure treesitter
		treesitter.setup({
			highlight = { enable = true },
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
