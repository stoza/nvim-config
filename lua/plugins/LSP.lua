return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    -- mason-lspconfig
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup{
                ensure_installed = {'clangd', 'gopls', 'jsonls', 'lua_ls', 'marksman'}, -- this allow to be sure the language we want are installed
            }
        end
    },
    -- nvim-lsp config (responsible for communication between nvim and lsp server)
    {
        "neovim/nvim-lspconfig",
        config = function()
            local LSPconfig = require('lspconfig')
            --NOTE this is annoying because every setup needs to be done
            -- mannullay. Maybe a way to circle on a variable
            LSPconfig.lua_ls.setup {}
            LSPconfig.clangd.setup {}
            LSPconfig.gopls.setup {}
            LSPconfig.jsonls.setup {}
            LSPconfig.marksman.setup {}
            -- keybindings (can find the list by typing :help vim.lsp.buf)
            vim.keymap.set('n', 'R', vim.lsp.buf.rename, {}) -- MAJUSCULE R will rename all occurance of the word under cursor
        end
    }
}
