return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- Para iconos en la barra
    event = "VeryLazy", -- Carga perezosa para optimizar el arranque
    config = function()
      require("lualine").setup({
        options = {
          icons_enabled = true,
          theme = "molokai", -- Detecta el tema de colores activo
          component_separators = { left = "", right = "" },
          section_separators = { left = "", right = "" },
          disabled_filetypes = {
            statusline = { "dashboard", "alpha", "starter" }, -- No mostrar en pantallas especiales
            winbar = {},
          },
          globalstatus = true, -- Barra global en toda la ventana (Neovim 0.7+)
        },
        sections = {
          lualine_a = { { "mode", icon = "" } },
          lualine_b = { { "branch", icon = "" }, "diff", "diagnostics" },
          lualine_c = {
            { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
            { "filename", path = 1, symbols = { modified = "", readonly = "", unnamed = "[Sin nombre]" }, padding = { left = 0 } },
          },
          lualine_x = {
            { "encoding" },
            { "fileformat", symbols = { unix = "", dos = "", mac = "" } },
            { "filetype" },
          },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { "filename" },
          lualine_x = { "location" },
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = { "quickfix", "neo-tree", "lazy", "mason", "trouble" },
      })
    end,
  },
}

