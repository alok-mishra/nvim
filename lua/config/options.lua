-- default: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- TODO:
-- Mutiple terminals

local o = vim.opt

-- o.fsync = false -- don't flush files (antivirus slowdown), default is false, but just in case

-- o.clipboard = "unnamed"
-- o.guifont = "Inconsolata NFM:h12"
-- o.guifont = "FiraCode NFM:h12"
o.guifont = "FiraCode Nerd Font:h12"

o.relativenumber = false

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4

o.smartindent = true

-- print("-> --> => === != </> <= </ www /> >= <=> !== == <== <-- <-")

-- o.shell = "zsh"
