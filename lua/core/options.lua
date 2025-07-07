local o = vim.opt
local g = vim.g

-- Disable rarely used built-in plugins for faster startup
g.loaded_gzip = 1              -- disable gzip file handling
g.loaded_zip = 1               -- disable zip file handling
g.loaded_zipPlugin = 1         -- disable zip file plugin
g.loaded_tar = 1               -- disable tar file handling
g.loaded_tarPlugin = 1         -- disable tar file plugin
g.loaded_getscript = 1         -- disable script downloading from vim.org
g.loaded_getscriptPlugin = 1   -- disable getscript plugin
g.loaded_vimball = 1           -- disable vimball archive handling
g.loaded_vimballPlugin = 1     -- disable vimball plugin
g.loaded_2html_plugin = 1      -- disable convert to HTML plugin
g.loaded_logiPat = 1           -- disable logical operators in search
g.loaded_rrhelper = 1          -- disable remote editing helper

-- Disable netrw (built-in file explorer) since we're using telescope
g.loaded_netrw = 1             -- disable netrw file explorer
g.loaded_netrwPlugin = 1       -- disable netrw plugin

-- UI
o.number = true                -- show line numbers
o.relativenumber = true        -- show relative line numbers
o.termguicolors = true         -- enable 24-bit RGB colors
o.conceallevel = 0             -- don't hide characters like quotes in json

-- Indentation
o.expandtab = true             -- use spaces instead of tabs
o.shiftwidth = 4               -- number of spaces for indentation
o.tabstop = 4                  -- number of spaces tabs count for
o.softtabstop = 4              -- number of spaces for tab key
o.smartindent = true           -- smart autoindenting

-- Text wrapping
o.wrap = true                  -- wrap long lines
o.linebreak = true             -- wrap at convenient points

-- Search
o.smartcase = true             -- case-sensitive if uppercase present
o.ignorecase = true            -- needed for smartcase to work
o.hlsearch = false             -- don't highlight search results permanently

-- Better scrolling
o.scrolloff = 8                -- keep 8 lines above/below cursor
o.sidescrolloff = 8            -- keep 8 columns left/right of cursor

-- Better splits
o.splitright = true            -- vertical splits go to the right
o.splitbelow = true            -- horizontal splits go below

-- Undo & backup
o.undofile = true              -- persistent undo history
o.backup = false               -- don't create backup files
o.swapfile = false             -- don't create swap files

-- Clipboard
o.clipboard = "unnamedplus"    -- use system clipboard

-- GUI font (for GUI versions)
o.guifont = "FiraCode Nerd Font:h12"
