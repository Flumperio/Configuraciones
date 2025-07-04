return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        html = { "prettier" },
        css = { "prettier" },
        javascript = { "prettier" },
        c = { "clang_format" },
        cpp = { "clang_format" },
        python = { "black" },
      },
    },
  },
}

