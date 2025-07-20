{
  pkgs,
  lib,
  config,
  ...
}: {
  config = {
    colorschemes = {
      shades-of-purple = {
        enable = true;
        colorscheme = "shades_of_purple";
        src = pkgs.fetchFromGitHub {
          owner = "Rigellute";
          repo = "shades-of-purple.vim";
          rev = "master";
          sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
        };
      };
    };
  };
}
