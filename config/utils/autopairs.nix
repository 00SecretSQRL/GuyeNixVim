{
  plugins.nvim-autopairs = {
    enable = true;
    settings = {
      check_ts = true;
      ts_config = {
        lua = [ "string" "source" ];
        javascript = [ "string" "template_string" ];
        java = false;
      };
      disable_filetype = [ "TelescopePrompt" "spectre_panel" ];
      fast_wrap = {
        map = "<M-e>";
        end_key = "$";
        keys = "qwertyuiopzxcvbnmasdfghjkl";
        check_comma = true;
        highlight = "PmenuSel";
        highlight_grey = "LineNr";
      };
    };
  };
}
