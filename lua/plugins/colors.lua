return {
  -- the colorscheme should be available when starting Neovim
  {
    "folke/tokyonight.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
--      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  {
    "tomasr/molokai",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true  -- activa true color
      vim.cmd([[colorscheme molokai]])
    end,
  }
}
