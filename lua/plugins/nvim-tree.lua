-- Archivo: lua/plugins/nvim-tree.lua

return {
  -- Instalar nvim-tree y su dependencia de iconos
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- iconos para ficheros
    },
    config = function()
      -- Recomendado: deshabilitar netrw (explorador nativo de vim)
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
      vim.opt.termguicolors = true

      -- Mapping global F2 para alternar nvim-tree
      vim.keymap.set(
        "n",
        "<F2>",
        function()
          -- Alternar la visibilidad del panel nvim-tree
          require("nvim-tree.api").tree.toggle()
        end,
        { desc = "Abrir/cerrar nvim-tree" }
      )

      require("nvim-tree").setup({
        sort = { sorter = "case_sensitive" },
        view = {
          width = 35,
          side = "left",
        },
        renderer = {
          highlight_git = true,
          group_empty = true,
          icons = {
            show = {
              file = true,
              folder = true,
              folder_arrow = true,
              git = true,
            },
            glyphs = {
              default = "",
              symlink = "",
              git = {
                unstaged = "U",
                staged = "S",
                unmerged = "UM",
                renamed = "R",
                deleted = "D",
                untracked = "",
                ignored = "I",
              },
              folder = {
                default = "",
                open = "",
                empty = "",
                empty_open = "",
                symlink = "",
              },
            },
          },
        },
        git = {
          enable = true,
          ignore = false,
          show_on_dirs = true,
          show_on_open_dirs = true,
          timeout = 500,
        },
        filters = {
          dotfiles = false, -- Cambia a true si quieres ocultar dotfiles
        },
        diagnostics = {
          enable = true,
          show_on_dirs = true,
          icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
          },
        },
        update_focused_file = {
          enable = true,
          update_cwd = true,
          ignore_list = {},
        },
      })
    end,
  }
}

