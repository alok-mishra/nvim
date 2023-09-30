-- default: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- TODO:
-- Mutiple terminals

local o = vim.opt

-- vim.g.node_host_prog = vim.fn.system("which neovim-node-host")

-- o.fsync = false -- don't flush files (antivirus slowdown), default is false, but just in case

-- o.shell = "zsh"
-- o.guifont = "Inconsolata NFM:h12"
-- o.guifont = "FiraCode NFM:h12"

o.guifont = "FiraCode Nerd Font:h12"

o.relativenumber = false

-- o.clipboard = "" -- separate clipboard for vim
o.smartcase = true

-- spacing
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
o.expandtab = true
o.smartindent = true

o.wrap = true -- wrap lines
o.linebreak = true -- wrap lines at convenient points

o.conceallevel = 0 -- don't hide characters, like quotes in json

-- print("-> --> => === != </> <= </ www /> >= <=> !== == <== <-- <-")
