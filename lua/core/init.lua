if vim.g.vscode then
  require("core.vscode")
  return
end

require("core.plugins")
require("core.keymaps")
require("core.options")
require("core.autocmds")
