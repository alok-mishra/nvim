-- default: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- TODO:
-- Mutiple terminals

local o = vim.opt

-- vim.g.node_host_prog = vim.fn.system("which neovim-node-host")

-- o.fsync = false -- don't flush files (antivirus slowdown), default is false, but just in case

-- o.clipboard = "unnamed"
-- o.guifont = "Inconsolata NFM:h12"
-- o.guifont = "FiraCode NFM:h12"
o.guifont = "FiraCode Nerd Font:h12"

o.relativenumber = false

o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
o.expandtab = true
o.autoindent = true

o.conceallevel = 0 -- don't hide characters, like quotes in json
o.wrap = true -- wrap lines

-- o.smartindent = true

-- print("-> --> => === != </> <= </ www /> >= <=> !== == <== <-- <-")

-- o.shell = "zsh"
