{
  imports = [
    ./sets.nix
    ./keymaps.nix

    ./bufferlines/bufferline.nix

    ./colorschemes/base16.nix
    ./colorschemes/catppuccin.nix
    ./colorschemes/rose-pine.nix
    ./colorschemes/dracula.nix

    # Completion — blink.cmp (Rust-based) replaces nvim-cmp + 6 source plugins
    ./completion/blink.nix
    ./completion/copilot.nix
    ./completion/copilot-chat.nix

    ./dap/dap.nix

    ./filetrees/neo-tree.nix

    ./git/gitsigns.nix
    ./git/diffview.nix
    ./git/lazygit.nix

    ./languages/nvim-lint.nix
    ./languages/treesitter/treesitter.nix
    ./languages/treesitter/treesitter-context.nix
    ./languages/treesitter/treesitter-textobjects.nix
    ./languages/treesitter/ts-autotag.nix
    ./languages/treesitter/ts-context-commentstring.nix # stub — native now

    ./lsp/conform.nix
    ./lsp/fidget.nix
    ./lsp/lsp.nix
    ./lsp/lspsaga.nix # stub — removed
    ./lsp/trouble.nix

    ./none-ls/none-ls.nix # stub — removed

    ./pluginmanagers/lazy.nix

    ./snippets/luasnip.nix

    ./statusline/lualine.nix

    # fzf-lua (Rust-based) replaces telescope + fzf-native
    ./telescope/fzf-lua.nix

    ./ui/alpha.nix          # stub — snacks dashboard replaces it
    ./ui/dressing-nvim.nix  # stub — snacks input + fzf-lua ui_select replace it
    ./ui/indent-blankline.nix
    ./ui/noice.nix
    ./ui/snacks.nix

    ./utils/autopairs.nix   # nvim-autopairs replaces ultimate-autopair
    ./utils/better-escape.nix
    ./utils/flash.nix
    ./utils/harpoon.nix
    ./utils/illuminate.nix  # stub — snacks words replaces it
    ./utils/lazydev.nix     # replaces neodev
    ./utils/markdown-preview.nix
    ./utils/mini.nix
    ./utils/neodev.nix      # stub — replaced by lazydev
    ./utils/nvim-colorizer.nix
    ./utils/nvim-surround.nix
    ./utils/oil.nix
    ./utils/persistence.nix
    ./utils/plenary.nix
    ./utils/rangernvim.nix  # stub — removed
    ./utils/refactor.nix
    ./utils/sidebar.nix     # stub — removed
    ./utils/tmux-navigator.nix
    ./utils/todo-comments.nix
    ./utils/toggleterm.nix
    ./utils/ultimate-autopair.nix # stub — replaced by autopairs.nix
    ./utils/undotree.nix
    ./utils/whichkey.nix
  ];
}
