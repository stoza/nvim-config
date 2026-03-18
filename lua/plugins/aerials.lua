return {
    "stevearc/aerial.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
        on_attach = function(bufnr)
            vim.keymap.set("n", "{", "<cmd>AerialPrev<cr>", { buffer = bufnr })
            vim.keymap.set("n", "}", "<cmd>AerialNext<cr>", { buffer = bufnr })
        end,
    },
    keys = {
        { "<leader>a", "<cmd>AerialToggle<cr>", desc = "Toggle outline" },
    },
}
