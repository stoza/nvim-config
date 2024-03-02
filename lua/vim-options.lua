-- all stuff related to indendation
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- stuff realted to search
vim.cmd("set incsearch") -- incremental search, show partial matches

-- stuff related to visual
vim.cmd("set cursorline")
vim.cmd("set relativenumber") --use to see relative number line
vim.cmd("set number")
vim.cmd("set title") --reflecting the current file being edited

-- diagnostic symbol
local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = "󰌶 ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl= hl, numhl = hl})
end

-- stuff to not acidentally close unsaved file
vim.cmd("set confirm") --ask before closing unsaved file

--keymapping
vim.cmd("nnoremap <Space> <NOP>") --Use to unmap space in normal mode
vim.g.mapleader = " "
