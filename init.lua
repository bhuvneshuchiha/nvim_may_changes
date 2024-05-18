vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")
vim.opt.guicursor = "n-v-i-c:block-Cursor"
local o = vim.o
o.cursorline = false
o.expandtab = true
o.smartindent = true
o.tabstop = 2
o.shiftwidth = 2
vim.opt.list = false
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.colorcolumn = "100" --- colorcolumn (disable to remove colorcolumn)
vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true -- vim.opt this to true for status line
vim.opt.cmdheight = 1 -- vim.opt to 1 if you want to see primagen like status line, plus comment out
--some code in noice, lua and nvim-notify.
vim.opt.laststatus = 2 -- vim.opt this to 1 as well for status line.
vim.o.statusline = "%F"
vim.wo.statusline = "%F"
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.wrap = false
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" })
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"
vim.opt.mouse = ""
vim.opt.showmode = true -- need to vim.opt it true to show commands in status line like prime.
-- Add asterisks in block comments
vim.opt.formatoptions:append({ "r" })
--vim.opt.statusline = [[%<%f %h%m%r %y%=%{v:register} %-14.(%l,%c%V%) %P]] -- for the status line
--vim.o.statusline = "[%<%.20f][%{&fenc==''?&enc:&fenc}]%y%m%r%h%=%([Line: %l Column: %c %P]%)"
