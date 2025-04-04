return {
  "windwp/nvim-autopairs", 
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/nvim-cmp",
  },
  config = function()
    -- import nvim-autopairs
    local autopairs = require('nvim-autopairs')

    autopairs.setup({
      check_ts = true, --enable treesitter
      ts_config = {
        lua = {"string"},
        javascript = { "template_string" },
      },
    })

    -- import nvim-autopairs completion functionnality
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")

    --import nvim-cmp plugin
    local cmp = require("cmp")

    -- make autopairs and completion work together
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}
