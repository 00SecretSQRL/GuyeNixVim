{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        alwaysDivideMiddle = true;
        globalstatus = true;
        ignoreFocus = ["neo-tree"];
        extensions = ["fzf"];
        theme = "dracula";
        componentSeparators = {
          left = "|";
          right = "|";
        };
        sectionSeparators = {
          left = "█"; # 
          right = "█"; # 
        };
        sections = {
          lualine_a = ["mode"];
          lualine_b = [
            {
              name = "branch";
              icon = "😈";
            }
            "diff"
            "diagnostics"
          ];
          lualine_c = ["filename"];
          lualine_x = ["filetype"];
          lualine_y = ["progress"];
          lualine_z = [''"👻" .. os.date("%R")''];
        };
      };
    };
  };
}
