return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "html", "cssls", "emmet_ls", "clangd", "pyright" }, -- Se puede agregar "pylsp" si el otro no funciona
      automatic_installation = true,
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local servers = { "html", "cssls", "emmet_ls", "clangd", "pyright" }
      for _, server in ipairs(servers) do
        lspconfig[server].setup({})
      end
    end,
  },
}

