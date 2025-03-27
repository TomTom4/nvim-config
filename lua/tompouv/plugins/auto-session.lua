return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require('auto-session')
    auto_session.setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = {"~/", "~/Bureau", "~/Téléchargements", "~/Documents"}
    })

    -- keymaps
    local keymap = vim.keymap

    keymap.set('n', '<leader>wr', '<cmd>SessionRestore<cr>', {desc ="restore last session for current working directory"})
    keymap.set('n', '<leader>ws', '<cmd>SessionSave<cr>', {desc ="save session for auto session root dir"})
  end,
}
