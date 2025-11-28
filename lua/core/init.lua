if vim.g.vscode then
  require("core.vscode")
  return
end

-- Load in correct order: options → plugins → keymaps → autocmds
require("core.options")   -- 1. Set editor behavior first
require("core.plugins")   -- 2. Load plugins (keymaps will be inside plugin configs)
require("core.keymaps")   -- 3. Set non-plugin keymaps
require("core.autocmds")  -- 4. Set autocmds last
