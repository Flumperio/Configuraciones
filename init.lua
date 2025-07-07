vim.o.termguicolors = true
require("config.lazy")
local session = vim.fn.expand("~/.config/nvim/DefaultSession.vim")
if vim.fn.filereadable(session) == 1 then
  vim.cmd("source " .. session)
end

