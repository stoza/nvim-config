-- Just the setup of lazy the package manager
-- all plugins are configures in the lua/plugins/NAMEOFPLUGINS file 
-- becausse lazy allow us to do like that and thats really clean
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)



local opts = {}

require("vim-options")
require("lazy").setup("plugins")



