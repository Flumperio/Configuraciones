return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x", -- Usa la rama estable actual
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- Iconos de archivos (opcional pero recomendado)
      "MunifTanjim/nui.nvim",
    },
    cmd = "Neotree",
    keys = {
      -- Atajos para abrir el explorador en distintos modos y ubicaciones
      { "<F2>", function() require("neo-tree.command").execute({ toggle = true, dir = vim.fn.getcwd() }) end, desc = "Explorer NeoTree (cwd)" },
      { "<F3>", function() require("neo-tree.command").execute({ source = "git_status", toggle = true }) end, desc = "Git Explorer" },
      { "<F4>", function() require("neo-tree.command").execute({ source = "buffers", toggle = true }) end, desc = "Buffer Explorer" },
      { "<leader>e", "<leader>fe", desc = "Explorer NeoTree (cwd)", remap = true },
    },
    opts = {
      sources = { "filesystem", "buffers", "git_status", "document_symbols" },
      open_files_do_not_replace_types = { "terminal", "Trouble", "qf", "Outline" },
      enable_git_status = true,
      enable_diagnostics = true,
      filesystem = {
        filtered_items = {
          visible = true, -- Muestra archivos ocultos (cámbialo si prefieres ocultarlos)
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        follow_current_file = { enabled = true }, -- Sincroniza con el archivo activo
        use_libuv_file_watcher = true, -- Refresco automático
        window = {
          mappings = {
            ["l"] = "open",
            ["h"] = "close_node",
            ["<CR>"] = "open",
            ["o"] = "system_open", -- Abrir archivo con la app del sistema
            ["."] = "toggle_hidden",
            ["P"] = "focus_preview",
            ["<space>"] = "none",
          },
        },
      },
      default_component_configs = {
        indent = {
          with_expanders = true,
          expander_collapsed = "",
          expander_expanded = "",
          expander_highlight = "NeoTreeExpander",
        },
        git_status = {
          symbols = {
            added     = "✚",
            modified  = "",
            deleted   = "✖",
            renamed   = "➜",
            untracked = "★",
            ignored   = "◌",
            unstaged  = "✗",
            staged    = "✓",
            conflict  = "",
          },
        },
      },
      window = {
        position = "left",
        width = 32,
        mappings = {
          ["<space>"] = "none",
        },
      },
    },
    config = function(_, opts)
      require("neo-tree").setup(opts)
    end,
  },
}

