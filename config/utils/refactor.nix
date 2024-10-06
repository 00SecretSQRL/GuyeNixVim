{
  plugins.inc-rename = {
    enable = true;
    keys = [
    {
      mode = "n";
      key = "<leader>rn";
      action = ''
        function()
          return "IncRename " .. vim.fn.expand("<cword>")
        end
        '';
      options = {
        desc = "LazyGit (root dir)";
        };
      }
    ];
  };
}
