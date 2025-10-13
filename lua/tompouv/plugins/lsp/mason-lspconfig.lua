return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
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
	config = function()
		local mason_registry = require("mason-registry")

		local function install_pylsp_plugins(pkg)
			if pkg.name ~= "python-lsp-server" then
				return
			end
			local venv = pkg:get_install_path() .. "/venv"
			local pip = venv .. "/bin/pip"

			-- Install pylsp-mypy
			vim.fn.jobstart({ pip, "show", "pylsp-mypy" }, {
				stdout_buffered = true,
				stderr_buffered = true,
				on_exit = function(_, code)
					if code == 0 then
						-- already installed
						-- vim.notify("ℹ️ pylsp-mypy already present in Mason pylsp venv", vim.log.levels.DEBUG)
					else
						-- not installed, so install it
						vim.fn.jobstart({ pip, "install", "pylsp-mypy" }, {
							stdout_buffered = true,
							stderr_buffered = true,
							on_exit = function(_, code2)
								if code2 == 0 then
									vim.notify("✅ pylsp-mypy installed in Mason pylsp venv", vim.log.levels.INFO)
								else
									vim.notify("❌ failed to install pylsp-mypy", vim.log.levels.ERROR)
								end
							end,
						})
					end
				end,
			})

			-- Install python-lsp-ruff
			vim.fn.jobstart({ pip, "show", "python-lsp-ruff" }, {
				stdout_buffered = true,
				stderr_buffered = true,
				on_exit = function(_, code)
					if code == 0 then
						-- already installed
						-- vim.notify("ℹ️ python-lsp-ruff already present in Mason pylsp venv", vim.log.levels.DEBUG)
					else
						-- not installed, so install it
						vim.fn.jobstart({ pip, "install", "python-lsp-ruff" }, {
							stdout_buffered = true,
							stderr_buffered = true,
							on_exit = function(_, code2)
								if code2 == 0 then
									vim.notify("✅ python-lsp-ruff installed in Mason pylsp venv", vim.log.levels.INFO)
								else
									vim.notify("❌ failed to install python-lsp-ruff", vim.log.levels.ERROR)
								end
							end,
						})
					end
				end,
			})
		end

		-- install whenever pylsp is installed or updated
		mason_registry:on("package:handle", install_pylsp_plugins)

		-- also check at startup if pylsp is already installed
		if mason_registry.is_installed("python-lsp-server") then
			install_pylsp_plugins(mason_registry.get_package("python-lsp-server"))
		end
	end,
}
