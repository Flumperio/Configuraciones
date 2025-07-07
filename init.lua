vim.o.termguicolors = true

-- Desactiva completamente el resaltado de pares (matchparen)
vim.g.loaded_matchparen = 1
vim.opt.showmatch = false

-- Carga tu configuración de plugins o módulos personalizados
require("config.lazy")

