return {
  --the autopairs plugins to automatically pair parenthesis and so on
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {},
  },
  -- the color rainbow to match parenthesis by color
  {
    "hiphish/rainbow-delimiters.nvim"
  },
  {
    "RRethy/vim-illuminate"
  }
}
