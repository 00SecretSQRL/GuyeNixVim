{
  pkgs,
  lib,
  config,
  ...
}: {
  config = {
    plugins = {
      shades-of-purple = {
        enable = true;
        src = pkgs.fetchFromGitHub {
          owner = "Rigellute";
          repo = "shades-of-purple.vim";
          rev = "master";
          sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
        };
      };
    };
    
    extraConfigLua = ''
      vim.cmd("colorscheme shades_of_purple")
    '';
  };
}
