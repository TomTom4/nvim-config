return {
  "numToStr/Comment.nvim",
  event = {"BufReadPre", "BufNewFile"},
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    -- import comment plugin 
    local comment = require("Comment")

    local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

    comment.setup({
      -- for commenting tsx, jsx, html files
      pre_hook = ts_context_commentstring.create_pre_hook(),

    })
    
  end,
}
