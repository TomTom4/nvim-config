vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- tabs and indentations
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tabs to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false -- disable line wrapping


-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you included mix case into search, then become case sensitive again


-- turn on termguicolors for advanced colorschemes
opt.termguicolors = true
opt.background = "dark"

-- lines and numbers
opt.signcolumn = "yes"
opt.cursorline = true
opt.number = true

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line, and start position

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to bottom
