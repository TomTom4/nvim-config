return {
	"mason-org/mason.nvim",
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
		"whoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		local masonLspconfig = require("mason-lspconfig")

		masonLspconfig.setup({
			ensure_installed = {
				"pylsp", -- python lsp server
				"dockerls", -- docker lsp server
				"ts_ls", -- typescript lsp server
				"tailwindcss", -- tailwindcss lsp server
				"lua_ls", -- lua lsp server
				"ast_grep", -- c, c++, c# lsp server
				"rust_analyzer", -- rust lsp server
				"sqlls", -- sql lsp server
			},
		})

		local mason_tool_installer = require("mason-tool-installer")
		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"isort",
				"ruff",
				"black",
				"eslint_d",
			},
		})
	end,
}
