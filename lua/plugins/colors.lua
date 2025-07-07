return {
  -- Molokai
  {
    "tomasr/molokai",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true
      -- vim.cmd([[colorscheme molokai]])
    end,
  },
}

