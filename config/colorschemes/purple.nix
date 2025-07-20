{
  plugins = {
    shades-of-purple = {
      enable = true;
      package = pkgs.vimPlugins.shades-of-purple-vim or {
        src = pkgs.fetchFromGitHub {
          owner = "Rigellute";
          repo = "shades-of-purple.vim";
          rev = "master";
        };
      };
    };
  };
}