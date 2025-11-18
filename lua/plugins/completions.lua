return {
{
  'saghen/blink.cmp',
  -- optional: provides snippets for the snippet source
  dependencies = { 'rafamadriz/friendly-snippets' },

  -- use a release tag to download pre-built binaries
  version = '1.*',
  -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
  -- build = 'cargo build --release',
  -- If you use nix, you can build from source using latest nightly rust with:
  -- build = 'nix run .#build-plugin',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
    -- 'super-tab' for mappings similar to vscode (tab to accept)
    -- 'enter' for enter to accept
    -- 'none' for no mappings
    --
    -- All presets have the following mappings:
    -- C-space: Open menu or open docs if already open
    -- C-n/C-p or Up/Down: Select next/previous item
    -- C-e: Hide menu
    -- C-k: Toggle signature help (if signature.enabled = true)
    --
    -- See :h blink-cmp-config-keymap for defining your own keymap
            keymap = {
                preset = "enter",
                ["<C-k>"] = { "select_next", "fallback" },
                ["<C-j>"] = { "select_prev", "fallback" },
            },

    appearance = {
      -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono'
    },

    -- (Default) Only show the documentation popup when manually triggered
    completion = { documentation = { auto_show = true } },

    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
    -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
    -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
    --
    -- See the fuzzy documentation for more information
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
--  {
--    "hrsh7th/nvim-cmp",
--    config = function()
--      local cmp = require'cmp'
--      require("luasnip.loaders.from_vscode").lazy_load()
--
--      cmp.setup({
--        snippet = {
--          -- REQUIRED - you must specify a snippet engine
--          expand = function(args)
--            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
--          end,
--        },
--        window = {
--          completion = cmp.config.window.bordered(),
--          documentation = cmp.config.window.bordered(),
--        },
--        mapping = cmp.mapping.preset.insert({
--          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
--          ['<C-f>'] = cmp.mapping.scroll_docs(4),
--          ['<C-Space>'] = cmp.mapping.complete(),
--          ['<C-e>'] = cmp.mapping.abort(),
--          ['<TAB>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
--          ['<C-j>'] = cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select, count = 1}),
--          ['<C-k>'] = cmp.mapping.select_prev_item(),
--        }),
--        sources = cmp.config.sources({
--          { name = 'nvim_lsp' },
--          { name = 'luasnip' }, -- For luasnip users.
--        }, {
--            { name = 'buffer' },
--          })
--      })
--
--    end
--  },
--  -- luasnip (a snippet that preload some type of code)
--  {
--    'L3MON4D3/LuaSnip',
--    dependencies = {
--      'saadparwaiz1/cmp_luasnip', --cmp_luasnip is used to expand snipet 
--      'rafamadriz/friendly-snippets' -- use to actually preshoot snippet
--    }
--  },
--  --This is the actual completion proposed by the LSP server all before are just predefined snippet
--  {
--    "hrsh7th/cmp-nvim-lsp"
--  },
}
