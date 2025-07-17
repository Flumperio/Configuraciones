vim.o.termguicolors = true

-- Desactiva completamente el resaltado de pares (matchparen)
vim.g.loaded_matchparen = 1
vim.opt.showmatch = false

-- Asignamos key map de control+s para grabar
vim.keymap.set("n", "<C-s>", ":w<cr>", {silent = true, desc = "Guardar archivo"})
vim.keymap.set("i", "<C-s>", "<C-o>:w<cr>", {silent = true, desc = "Guardar archivo"})
vim.g.mapleader = ' '
-- Carga tu configuración de plugins o módulos personalizados
require("config.lazy")

