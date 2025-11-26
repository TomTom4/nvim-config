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

-- Navigation remaps (replacing [ and ] with <leader>k and <leader>j)
-- Quickfix list
keymap.set("n", "<leader>jq", "<cmd>cnext<CR>", { desc = "Next quickfix item" })
keymap.set("n", "<leader>kq", "<cmd>cprevious<CR>", { desc = "Previous quickfix item" })
keymap.set("n", "<leader>jQ", "<cmd>clast<CR>", { desc = "Last quickfix item" })
keymap.set("n", "<leader>kQ", "<cmd>cfirst<CR>", { desc = "First quickfix item" })

-- Location list
keymap.set("n", "<leader>jl", "<cmd>lnext<CR>", { desc = "Next location list item" })
keymap.set("n", "<leader>kl", "<cmd>lprevious<CR>", { desc = "Previous location list item" })
keymap.set("n", "<leader>jL", "<cmd>llast<CR>", { desc = "Last location list item" })
keymap.set("n", "<leader>kL", "<cmd>lrewind<CR>", { desc = "First location list item" })

-- Buffer navigation
keymap.set("n", "<leader>jb", "<cmd>bnext<CR>", { desc = "Next buffer" })
keymap.set("n", "<leader>kb", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
keymap.set("n", "<leader>jB", "<cmd>blast<CR>", { desc = "Last buffer" })
keymap.set("n", "<leader>kB", "<cmd>bfirst<CR>", { desc = "First buffer" })

-- Tag navigation
keymap.set("n", "<leader>jt", "<cmd>tnext<CR>", { desc = "Next tag" })
keymap.set("n", "<leader>kt", "<cmd>tprevious<CR>", { desc = "Previous tag" })
keymap.set("n", "<leader>jT", "<cmd>tlast<CR>", { desc = "Last tag" })
keymap.set("n", "<leader>kT", "<cmd>tfirst<CR>", { desc = "First tag" })

-- Argument list navigation
keymap.set("n", "<leader>ja", "<cmd>next<CR>", { desc = "Next argument" })
keymap.set("n", "<leader>ka", "<cmd>previous<CR>", { desc = "Previous argument" })
keymap.set("n", "<leader>jA", "<cmd>last<CR>", { desc = "Last argument" })
keymap.set("n", "<leader>kA", "<cmd>first<CR>", { desc = "First argument" })

-- Traditional Vim bracket motions (keeping useful ones)
keymap.set("n", "<leader>j{", "]}", { desc = "Next unmatched }" })
keymap.set("n", "<leader>k{", "[{", { desc = "Previous unmatched {" })
keymap.set("n", "<leader>j(", "])", { desc = "Next unmatched )" })
keymap.set("n", "<leader>k(", "[(", { desc = "Previous unmatched (" })

-- Spelling navigation
keymap.set("n", "<leader>js", "]s", { desc = "Next misspelled word" })
keymap.set("n", "<leader>ks", "[s", { desc = "Previous misspelled word" })

-- Diff mode changes (if using diff)
keymap.set("n", "<leader>jx", "]c", { desc = "Next change (diff mode)" })
keymap.set("n", "<leader>kx", "[c", { desc = "Previous change (diff mode)" })
