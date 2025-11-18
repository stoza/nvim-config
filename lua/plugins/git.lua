return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "sindrets/diffview.nvim",
        "nvim-telescope/telescope.nvim"
    },
    config = true
--    config = require("neogit").setup({
--        floating = {
--            relative = "editor",
--            width = 0.8,
--            height = 0.7,
--            style = "minimal",
--            border = "rounded",
--        },
--        kind = floating
--    })
}
