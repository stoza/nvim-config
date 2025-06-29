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
        dependencies = {'williamboman/mason.nvim'},
        config = function()
            require("mason-lspconfig").setup{
                ensure_installed = {'clangd', 'gopls', 'jsonls', 'lua_ls', 'marksman', 'pyright', 'solc', 'texlab', 'intelephense' }, -- this allow to be sure the language we want are installed
            }
        end
    },
    -- nvim-lsp config (responsible for communication between nvim and lsp server)
    {
        "neovim/nvim-lspconfig",
        config = function()
            local LSPconfig = require('lspconfig')
            local capabilities = require('cmp_nvim_lsp').default_capabilities() -- used to have the completion by lsp

            --NOTE this is annoying because every setup needs to be done
            -- mannullay. Maybe a way to circle on a variable
            LSPconfig.lua_ls.setup({
                capabilities = capabilities --used to setup the completion by the LSP
            })
            LSPconfig.clangd.setup({
                capabilities = capabilities
            })
            LSPconfig.gopls.setup({
                capabilities = capabilities
            })
            LSPconfig.jsonls.setup({
                capabilities = capabilities
            })
            LSPconfig.marksman.setup({
                capabilities = capabilities
            })
            LSPconfig.pyright.setup({
                capabilities = capabilities
            })
            LSPconfig.solc.setup({
                capabilities = capabilities
            })
            LSPconfig.texlab.setup({
                capabilities = capabilities
            })
            LSPconfig.intelephense.setup({
                capabilities = capabilities
            })
            LSPconfig.ltex.setup({ -- require to manually install the server from the realease page ltex-ls-plus
                capabilities = capabilities
            })

            -- keybindings (can find the list by typing :help vim.lsp.buf)
            vim.keymap.set('n', 'R', vim.lsp.buf.rename, {}) -- MAJUSCULE R will rename all occurance of the word under cursor
            vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, {})
            vim.keymap.set('n', '<leader>q', vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<leader>z', vim.lsp.buf.code_action, {})
            -- now use in telescope vim.keymap.set('n', '<leader>f', vim.lsp.buf.references, {})
            -- should add multiple keymap --
            -- 1. go to the error in the file --
            vim.keymap.set('n', '<leader>e', '<cmd>Telescope diagnostics<cr>')
            -- open the list of symbol in telescope (ie liste of function name and variable)
            vim.keymap.set('n', '<leader>o', '<cmd>Telescope lsp_document_symbols<cr>')
        end
    }
}
