return {
  {
    "folke/zen-mode.nvim",
    opts = {
      window = {
        width = 100,
        options = {
          number = false,
          relativenumber = false,
        },
      },
      on_open = function()
        local opts = vim.opt_local

        opts.wrap = true
        opts.linebreak = true
        opts.spell = false
      end,
    },
  },
}
