vim.g.mapleader = " "
local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", {desc = "press jk to escape insert mode"})

keymap.set('n', "<leader>nh", ":nohl<CR>", {desc = "clear search highlights"})

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", {desc = "split window vertically"})
keymap.set("n", "<leader>sh", "<C-w>s", {desc = "split window horizontally"})
keymap.set("n", "<leader>se", "<C-w>=", {desc = "split window equal size"})
keymap.set("n", "<leader>sx", "<cmd>close<CR>", {desc = "close current split"})


-- tabs management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", {desc = "Open new tab"})
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", {desc = "Close current tab"})
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", {desc = "go to  next tab"})
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", {desc = "to to previous tab"})
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", {desc = "Open current buffer in new tab"})

-- quickfixlist management
keymap.set("n", "<leader>qfo", "<cmd>copen<CR>", { desc = "Open quickfix list" } )
keymap.set("n", "<leader>qff", "<cmd>cfirst<CR>", { desc = "navigate to first item of quickfix list" } )
keymap.set("n", "<leader>qfl", "<cmd>clast<CR>", { desc = "navigate to last item of quickfix list" } )
keymap.set("n", "<leader>qfn", "<cmd>clast<CR>", { desc = "navigate to next item of quickfix list" } )
keymap.set("n", "<leader>qfp", "<cmd>clast<CR>", { desc = "navigate to prev item of quickfix list" } )
keymap.set("n", "<leader>qfdo", "<cmd>cdo<CR>", { desc = "navigate to prev item of quickfix list" } )
