return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        win = {
            type = "float",
            relative = "editor",
            border = "rounded",
            title = "Diagnostics",
            title_pos = "center",
        },
        focus = true,
        keys = {
            ["<cr>" ] = "jump_close",
        }
    },
    keys = {
        {"<leader>e", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)"},
        {"<leader>E", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)"},
    }
}
