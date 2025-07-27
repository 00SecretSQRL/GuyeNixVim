{
  plugins.treesitter = {
    enable = true;
    settings = {
      indent = {enable = true;};
      highlight = {
        enable = true;
        additional_vim_regex_highlighting = true; # Enable regex highlighting
      };
      incremental_selection = {
        enable = true;
        keymaps = {
          init_selection = "<CR>";
          node_incremental = "<CR>";
          node_decremental = "<BS>";
          scope_incremental = "<TAB>";
        };
      };
      textobjects = {
        enable = true;
      };
      context_commentstring = {
        enable = true;
      };
    };
    folding = true;
    nixvimInjections = true;
  };
}
