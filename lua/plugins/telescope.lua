-- Intersting keymap
-- <C-v> open in vsplit
return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = {'nvim-lua/plenary.nvim'},
    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set('n', '<C-p>', builtin.find_files, {})
        vim.keymap.set('n', '<leader>p', builtin.live_grep, {})
        vim.keymap.set('n', '<Leader>m', builtin.buffers, {})
        vim.keymap.set('n', '<leader>t', builtin.colorscheme, {noremap = true})
        vim.keymap.set('n', '<leader>f', builtin.lsp_definitions, {})
    end
}
