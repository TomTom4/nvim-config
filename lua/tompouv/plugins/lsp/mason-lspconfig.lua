return {
	"mason-org/mason-lspconfig.nvim",
	version = "^1.0.0",
	opts = {
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
	},
}
