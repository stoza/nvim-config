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

vim.diagnostic.config({
  virtual_text = true,  -- Show errors as virtual text next to the line
  signs = true,         -- Show error signs in the sign column
  underline = true,     -- Underline the error text
    float =  {
        scope = 'cursor',
        source = 'always',
        border = "rounded",
    },
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

------------------------
--LSP related binding --
------------------------
-- keybindings (can find the list by typing :help vim.lsp.buf)
vim.keymap.set('n', 'R', vim.lsp.buf.rename, {}) -- MAJUSCULE R will rename all occurance of the word under cursor
vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, {})
vim.keymap.set('n', '<leader>q', vim.lsp.buf.hover, {})
vim.keymap.set('n', '<leader>z', vim.lsp.buf.code_action, {})
-- now use in telescope vim.keymap.set('n', '<leader>f', vim.lsp.buf.references, {})
-- should add multiple keymap --
-- 1. go to the error in the file --
-- open the list of symbol in telescope (ie liste of function name and variable)
vim.keymap.set('n', '<leader>o', '<cmd>Telescope lsp_document_symbols<cr>')

vim.opt.scrolloff = 8
