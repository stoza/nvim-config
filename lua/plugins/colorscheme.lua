-- just uncomment the package you want to use
return {
 -- {
 --   "catppuccin/nvim",
 --   name = "catppuccin",
 --   priority = 1000,
 --   config = function() -- Does not require setup anymore as it does it by default 
 --     vim.cmd.colorscheme "catppuccin"
 --   end
 -- },
  {
    "EdenEast/nightfox.nvim",
    config = function ()
      vim.cmd.colorscheme "nightfox"
    end
  }
}
