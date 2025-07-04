return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = {
        char = "┊",      -- Puedes cambiar el carácter por '┊', '▏', etc.
        tab_char = "│",
      },
      scope = { enabled = false },
      exclude = {
        filetypes = {
--          "help", "dashboard", "lazy", "mason", "lspinfo", "TelescopePrompt",
--          "TelescopeResults", "gitcommit", "checkhealth", "man", ""
          -- Agrega aquí todos los filetypes que NO quieres que tengan líneas de indentación
        },
      },
    },
    event = { "BufReadPre", "BufNewFile" },
  },
}

