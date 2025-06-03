
{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    ranger-nvim
  ];

  extraConfigLua = ''
  '';
}
