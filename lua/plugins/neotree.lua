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
    vim.keymap.set('n', '<A-n>', ':Neotree toggle reveal<CR>')
  end
}


