return {
	"allaman/emoji.nvim",
	version = "1.0.0", -- optionally pin to a tag
	ft = "markdown", -- adjust to your needs
	dependencies = {
		-- optional for nvim-cmp integration
		"hrsh7th/nvim-cmp",
		-- optional for telescope integration
		"nvim-telescope/telescope.nvim",
	},
	opts = {
		-- default is false, also needed for blink.cmp integration!
		enable_cmp_integration = true,
		-- optional if your plugin installation directory
	},
	config = function(_, opts)
		require("emoji").setup(opts)
		-- optional for telescope integration
		local ts = require("telescope").load_extension("emoji")
		vim.keymap.set("n", "<leader>fe", ts.emoji, { desc = "[F]ind [E]moji" })
	end,
}
