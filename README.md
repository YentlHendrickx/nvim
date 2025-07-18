## Neovim Config - Modular, Powerful, Maintainable - BLAZINGLY FAST!

Welcome to my personal Neovim configuration — a fully modular setup inspired by `kickstart.nvim`, but extended and restructured over the past year for performance, readability, and modern developer experience.

---

### 📁 Directory Structure

Configuration is organized like this:

```bash
lua/plugins/
├── all.lua             # Loads all core plugins -> will be modularized later
├── auto_format.lua     # Formatting on save and other auto commands
├── copilot.lua         # GitHub Copilot integration
├── gitsigns.lua        # Git signs in the gutter (sounds funny doesn't it?)
├── harpoon.lua         # Primeagen's Harpoon, man once you get used to it, you can't live without it
├── indent_line.lua     # Indents even for empty lines
├── lint.lua            # Linter configuration
├── lsp.lua             # Language server config loader -> nvim-lspconfig and nvim-cmp setup
│   └── servers/        # Individual LSP server configs
│       ├── lua_ls.lua
│       ├── vtsls.lua
│       └── ...
├── neo_tree.lua        # File tree explorer -> Rarely used, but useful when showing non hyper-nerd devs
├── obsidian.lua        # Obsidian.md note support -> Auto note linking, jumping to notes, etc.
├── telescope.lua       # It's telescope, you know it, you love it
├── treesitter.lua      # Syntax highlighting and parsing
├── which_key.lua       # Keybinding guide popup -> folke, i am in your debt
```

---

### ⚙️ LSP Configuration

Language servers are modularized under `plugins/lsp/servers/`. Each server has its own file, making it easy to tweak and expand.

Supported languages and servers:

* **Vue / TS / JS** → `vtsls` with `@vue/typescript-plugin`
* **Lua** → `lua_ls` with `lazydev` + `luvit-meta`
* **Rust** → `rust_analyzer`
* **PHP** → `intelephense`
* **C/C++** → `clangd`
* **Blade / Laravel** → `stimulus_ls`
* **OmniSharp Mono** → `omnisharp` for C# and .NET development (and Unity)
* **Tailwind / HTML / CSS / Svelte** → `tailwindcss`
* **Clangd** → `clangd` for C/C++ development

> LSP capabilities are extended via `cmp_nvim_lsp`, and servers are installed/managed through [`mason.nvim`](https://github.com/williamboman/mason.nvim) + [`mason-lspconfig`](https://github.com/williamboman/mason-lspconfig.nvim).

---

### 🔍 Fuzzy Finding

Powered by [Telescope](https://github.com/nvim-telescope/telescope.nvim) with extensions and custom mappings to boost navigation and productivity.
Using [ripgrep](https://github.com/BurntSushi/ripgrep) for blazingly fast searching.

---

### 📁 File Navigation

* [`neo-tree`](https://github.com/nvim-neo-tree/neo-tree.nvim) when you need a file tree explorer
* [`harpoon`](https://github.com/ThePrimeagen/harpoon) for quick file bookmarking and access, thank you Primeagen!

---

### ✅ Git Integration

* [`gitsigns.nvim`](https://github.com/lewis6991/gitsigns.nvim) for inline Git diffs and signs
* Git commands integrated into Telescope

---

### 🧠 Markdown & Notes

* [`obsidian.nvim`](https://github.com/epwalsh/obsidian.nvim) for managing Obsidian vaults inside Neovim
* [`render-markdown.nvim`](https://github.com/MeanderingProgrammer/render-markdown.nvim) for live markdown rendering, really useful for writing or viewing markdown

---

### 🖌️ Formatting & Linting

* Formatting on save via custom `auto_format.lua`
* Linters configured via `lint.lua`
* Supports Prettier, Stylua, etc.

---

### 💡 Keybindings

* `which-key.nvim` shows available keybindings in a popup
* Custom keymaps are grouped by LSP, Telescope, Git, Harpoon, etc.

---

### 📸 Extras

* [`vim-sleuth`](https://github.com/tpope/vim-sleuth): Auto-detect indent style
* Context-sensitive commenting via `ts-context-commentstring` + `mini.comment`

---

## 🚀 Getting Started

1. Clone the config:

```bash
git clone https://github.com/YentlHendrickx/nvim ~/.config/nvim
```

2. Launch Neovim:

```bash
nvim
```

3. Run Lazy.nvim sync:

```vim
:Lazy sync
```

