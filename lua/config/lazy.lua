-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.opt.number = true
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Indentación para HTML, CSS, JavaScript y derivados: 2 espacios
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact" },
  callback = function()
    vim.opt_local.shiftwidth = 2    -- Número de espacios al indentar
    vim.opt_local.tabstop = 2       -- Número de espacios que representa un tab
    vim.opt_local.expandtab = true  -- Usa espacios en vez de tabs
  end,
})

-- Indentación para C, C++ y Python: 4 espacios
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "python" },
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.expandtab = true
  end,
})

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
vim.cmd.colorscheme("unokai")

local bg = "#101010"
-- :local fg = "#c0c0c0" -- gris claro para texto, opcional

-- Fondo de ventanas principales
vim.api.nvim_set_hl(0, "Normal",       { bg = bg, fg = fg })
vim.api.nvim_set_hl(0, "NormalNC",     { bg = bg, fg = fg })
vim.api.nvim_set_hl(0, "NormalFloat",  { bg = bg, fg = fg })
vim.api.nvim_set_hl(0, "SignColumn",   { bg = bg })
vim.api.nvim_set_hl(0, "VertSplit",    { bg = bg, fg = bg })

-- Fondo para ventanas flotantes y popups
vim.api.nvim_set_hl(0, "FloatBorder",  { bg = bg, fg = fg })
vim.api.nvim_set_hl(0, "Pmenu",        { bg = bg, fg = fg })
vim.api.nvim_set_hl(0, "PmenuSel",     { bg = "#333333", fg = fg })
vim.api.nvim_set_hl(0, "CursorLine",   { bg = "#2a2a2a" })

-- Telescope
vim.api.nvim_set_hl(0, "TelescopeNormal",        { bg = bg, fg = fg })
vim.api.nvim_set_hl(0, "TelescopeBorder",        { bg = bg, fg = fg })
vim.api.nvim_set_hl(0, "TelescopePromptNormal",  { bg = bg, fg = fg })
vim.api.nvim_set_hl(0, "TelescopePromptBorder",  { bg = bg, fg = fg })
vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = bg, fg = fg })
vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = bg, fg = fg })

-- NvimTree
vim.api.nvim_set_hl(0, "NvimTreeNormal",         { bg = bg, fg = fg })
vim.api.nvim_set_hl(0, "NvimTreeNormalNC",       { bg = bg, fg = fg })
vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer",    { bg = bg })
vim.api.nvim_set_hl(0, "NvimTreeVertSplit",      { bg = bg, fg = bg })
vim.cmd [[highlight WinSeparator guifg=#FFFFFF guibg=NONE ctermfg=White ctermbg=NONE]]


