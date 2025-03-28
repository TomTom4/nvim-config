return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"                                                    ",
			" ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
			" ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
			" ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
			" ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
			" ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
			" ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
		}

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New file", "<cmd>ene<CR>"),
			dashboard.button("SPC", "?  > which key", "<cmd>WhichKey<CR>"),
			dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("SPC ff", "  > Find a file", "<cmd>Telescope find_files<CR>"),
			dashboard.button("SPC wr", "󱄋  > restore last session", "<cmd>SessionRestore<CR>"),
			dashboard.button("q", "󰩈  > Quit NVIM", ":qa<CR>"),
		}

		-- send config to alphaalpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[
        autocmd FileType alpha setlocal nofoldenable
    ]])
	end,
}
