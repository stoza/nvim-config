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

vim.diagnostic.config({
  virtual_text = true,  -- Show errors as virtual text next to the line
  signs = true,         -- Show error signs in the sign column
  underline = true,     -- Underline the error text
  update_in_insert = false,
})

-- stuff to not acidentally close unsaved file
vim.cmd("set confirm") --ask before closing unsaved file

--keymapping
vim.keymap.set('n', '<SPACE>', '<NOP>', {}) --use to unmap space in normal mode
vim.keymap.set('n', '<CR>', '<NOP>', {}) --use to unmap space in normal mode
vim.g.mapleader = " "
vim.keymap.set('n', '<Leader><CR>', 'A<CR><esc>', {}) --use to add a new line in normal mode (space + enter)

vim.keymap.set('n', '<C-l>', '<C-w>l', {noremap=true}) -- remap the moving between pane with just CTRL
vim.keymap.set('n', '<C-h>', '<C-w>h', {noremap=true})
