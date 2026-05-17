# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

NixVim configuration — builds a full Neovim setup using the [nixvim](https://github.com/nix-community/nixvim) framework. Output is a standalone Neovim package via `nix run`.

## Commands

```bash
nix run .              # Launch NixVim
nix flake check .      # Validate config (runs mkTestDerivationFromNvim)
nix fmt                # Format with nixfmt-rfc-style
nix flake update       # Update flake.lock
```

No build step is needed before running — `nix run .` builds on first invocation.

## Architecture

`flake.nix` calls `nixvim.legacyPackages.${system}.makeNixvimWithModule` with `config/` as the module. `config/default.nix` is the root — it imports every plugin module. Each plugin lives in its own `.nix` file under a feature directory.

```
config/
├── default.nix          # Root: imports all submodules
├── sets.nix             # editor options (tabs, scroll, UI, Neovide)
├── keymaps.nix          # keymaps (leader = space, no arrow keys)
├── bufferlines/         # bufferline
├── colorschemes/        # base16, catppuccin, dracula, rose-pine
├── completion/          # cmp, copilot, copilot-chat, lspkind
├── dap/                 # debugger
├── filetrees/           # neo-tree
├── git/                 # gitsigns, diffview, lazygit
├── languages/           # treesitter + extensions, nvim-lint
├── lsp/                 # lsp, conform, lspsaga, trouble, fidget
├── none-ls/             # none-ls diagnostics
├── pluginmanagers/      # lazy.nvim
├── snippets/            # luasnip
├── statusline/          # lualine
├── telescope/           # telescope
├── ui/                  # alpha, noice, dressing-nvim, indent-blankline
└── utils/               # harpoon, flash, oil, undotree, whichkey, toggleterm, etc.
```

## Key Patterns

**Adding a plugin:** Create `config/<category>/myplugin.nix`, add `programs.nixvim.plugins.myplugin` or `extraPlugins`, then import it in `config/default.nix`.

**Toggling plugins:** Comment/uncomment the import line in `config/default.nix`. Several plugins are already commented out (snacks, nui, neotest, project-nvim, neocord, hardtime).

**Plugin config location:** Each `.nix` file sets `config.plugins.<name>` options directly — no wrapper modules needed. Use nixvim's module options first; fall back to `extraConfigLua` only when no native option exists.

**`self` is available** in all submodules via `extraSpecialArgs = { inherit self; }` in `flake.nix`.

**nixpkgs channel:** Tracks `nixos-unstable`. Use `pkgs.<name>` directly — no stable/unstable split here.
