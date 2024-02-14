return {
    'nvim-lualine/lualine.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons'}, 
    config = function()
        require('lualine').setup({ -- why exactly do we need the setup here??
            options = {
                icons_enabled = true,
                theme = 'dracula'
            }
        })
    end
} 
