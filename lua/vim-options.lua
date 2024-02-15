-- all stuff related to indendation
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- stuff realted to search
vim.cmd("set incsearch") -- incremental search, show partial matches

-- stuff related to visual
vim.cmd("set cursorline")
vim.cmd("set relativenumber") --use to see relative number line
vim.cmd("set number")
vim.cmd("set title") --reflecting the current file being edited

-- stuff to not acidentally close unsaved file
vim.cmd("set confirm") --ask before closing unsaved file

--keymapping
vim.g.mapleader = " "
