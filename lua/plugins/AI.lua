return {
    "greggh/claude-code.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim" --required for git operation.
    },
    config = function ()
        require("claude-code").setup()
    end
}
