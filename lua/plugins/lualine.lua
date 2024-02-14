return {
    'nvim-lualine/lualine.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons'}, 
    config = function()
        --TODO should explore more the setup of lualine
        require('lualine').setup({ -- why exactly do we need the setup here??
            options = {
                icons_enabled = true,
                theme = 'dracula'
            }
        })
    end
} 
