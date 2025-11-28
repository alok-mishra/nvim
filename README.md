# Neovim Configuration

Minimal, from-scratch Neovim configuration with dual-mode support for both terminal Neovim and VSCode Neovim extension.

## Philosophy

- **Start minimal, grow incrementally** - Add plugins only as needed
- **Readable and maintainable** - Every line is understandable
- **Performance-first** - Lazy loading, optimized settings
- **Dual-mode** - Works in terminal and VSCode

## Features

- **Fuzzy finding** - Telescope for files and text search
- **LSP** - Language server support with Mason auto-install
- **Treesitter** - Better syntax highlighting
- **Autocompletion** - blink.cmp with LSP integration
- **Colorscheme** - Gruvbox (hard contrast)

## Quick Start

```bash
# Neovim will auto-install plugins on first launch
nvim
```

### Essential Keymaps

- **Leader**: `<Space>`
- **Find files**: `<leader>ff`
- **Find text**: `<leader>fw`
- **Go to definition**: `gd`
- **Hover docs**: `K`
- **Plugin manager**: `<leader>l`

See `.claude/docs/keymaps.md` for complete list.

## Structure

```
~/.config/nvim/
├── init.lua              # Entry point (sets leader keys)
├── lua/core/
│   ├── init.lua          # Load orchestrator (VSCode check)
│   ├── options.lua       # Editor settings
│   ├── plugins.lua       # Plugin configs (lazy.nvim)
│   ├── keymaps.lua       # Non-plugin keymaps
│   ├── autocmds.lua      # Auto commands
│   └── vscode.lua        # VSCode-specific config
└── .claude/
    ├── CLAUDE.md         # AI assistant guide
    └── docs/             # Detailed documentation
```

## Adding Plugins

Edit `lua/core/plugins.lua`:

```lua
require("lazy").setup({
  { "author/plugin-name", opts = {} },
})
```

## Adding LSP Servers

Edit the `servers` table in `lua/core/plugins.lua`:

```lua
local servers = {
  lua_ls = { ... },
  ts_ls = {},      -- TypeScript
  pyright = {},    -- Python
  gopls = {},      -- Go
}
```

## VSCode Integration

Automatically detected via `vim.g.vscode`. VSCode mode:
- Loads minimal config from `lua/core/vscode.lua`
- Maps keybinds to VSCode commands
- Keeps your vim motions consistent across environments

## Status

**Current**: Enhanced with kickstart.nvim best practices
- Load order fixed (critical)
- Performance optimized
- Lazy loading enabled
- Ready for incremental growth

## History

- Started from LazyVim (`.local/nvim/`) - too opinionated
- Rebuilt from scratch with kickstart.nvim patterns
- Current: minimal + essential plugins only
