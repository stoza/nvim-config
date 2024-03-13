return {
    "lervag/vimtex",
    lazy = false,
    init = function ()
        -- options related to viewer --
        vim.g.vimtex_view_general_viewer = 'okular'
        --TODO still need to find how to specify an othe path for the viewer --
        vim.g.vimtex_view_general_options = "--unique"
        -- this is the option for the latex compiler --
        vim.g.vimtex_compiler_method = "latexmk"
        vim.g.vimtex_compiler_latexmk = {
            options = {
                "--verbose",
                "-aux-directory=./aux",
                "-output-directory=./out",
            }
        }
        vim.keymap.set('n', '<C-s>', ":VimtexCompile<CR>")
    end
}
