return {
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require'cmp'
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          -- REQUIRED - you must specify a snippet engine
          expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<cr>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
          ['<TAB>'] = cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select, count = 1}),
          ['<C-a>'] = cmp.mapping.select_prev_item(),
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' }, -- For luasnip users.
        }, {
            { name = 'buffer' },
          })
      })

    end
  },
  -- luasnip (a snippet that preload some type of code)
  {
    'L3MON4D3/LuaSnip',
    dependencies = {
      'saadparwaiz1/cmp_luasnip', --cmp_luasnip is used to expand snipet 
      'rafamadriz/friendly-snippets' -- use to actually preshoot snippet
    }
  },
  --This is the actual completion proposed by the LSP server all before are just predefined snippet
  {
    "hrsh7th/cmp-nvim-lsp"
  },
}
