return {
    "j-morano/buffer_manager.nvim",
    config = function()
        require("buffer_manager").setup({})
        local bmui = require("buffer_manager.ui")
        vim.keymap.set('n', '<Leader>m', bmui.toggle_quick_menu, {})

    end
}
