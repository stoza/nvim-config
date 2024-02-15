-- SOME INTERESTING SHORTCUT OF NEOTREE
-- ["P"] toggle preview
-- ["S"] open split / ["s"]open vsplit
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim"
  },
  config = function()
        local neotree = require('neo-tree')

        neotree.setup({
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignore = false,
                }
            }
        })
    vim.keymap.set('n', '<A-n>', ':Neotree toggle reveal<CR>')
  end
}


