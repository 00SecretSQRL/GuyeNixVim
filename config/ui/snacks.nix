{pkgs, ...}: {
  extraPackages = with pkgs; [ trash-cli ];

  plugins.snacks = {
    enable = true;
    settings = {
      bigfile = {
        enabled = true;
        size = 1048576; # 1MB
      };

      dashboard = {
        enabled = true;
        sections = [
          { section = "header"; }
          { section = "keys"; gap = 1; padding = 1; }
        ];
        preset = {
          header = ''
 _____                         _   _ _
|  __ \                       | | | (_)
| |  \/_   _ _   _  ___ ______| | | |_ _ __ ___
| | __| | | | | | |/ _ \______| | | | | '_ ` _ \
| |_\ \ |_| | |_| |  __/      \ \_/ / | | | | | |
 \____/\__,_|\__, |\___|       \___/|_|_| |_| |_|
              __/ |
             |___/'';
          keys = [
            { icon = " "; key = "f"; desc = "Find File"; action.__raw = ''function() require("fzf-lua").files() end''; }
            { icon = " "; key = "n"; desc = "New File"; action = ":ene | startinsert"; }
            { icon = " "; key = "r"; desc = "Recent Files"; action.__raw = ''function() require("fzf-lua").oldfiles() end''; }
            { icon = " "; key = "g"; desc = "Find Text"; action.__raw = ''function() require("fzf-lua").live_grep() end''; }
            { icon = " "; key = "s"; desc = "Restore Session"; action.__raw = ''function() require("persistence").load() end''; }
            { icon = "󰒲 "; key = "l"; desc = "Lazy"; action = ":Lazy"; }
            { icon = " "; key = "q"; desc = "Quit"; action = ":qa"; }
          ];
        };
      };

      indent = {
        enabled = true;
        char = "│";
        hl = "SnacksIndent";
        scope = {
          enabled = true;
          hl = "SnacksIndentScope";
        };
      };

      input.enabled = true;

      notifier = {
        enabled = true;
        timeout = 3000;
        style = "compact";
      };

      quickfile.enabled = true;

      scope.enabled = true;

      scroll = {
        enabled = true;
        animate = {
          duration = { step = 15; total = 150; };
          easing = "linear";
        };
      };

      statuscolumn.enabled = true;

      words = {
        enabled = true;
        debounce = 200;
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>un";
      action.__raw = ''function() Snacks.notifier.hide() end'';
      options = { silent = true; desc = "Dismiss notifications"; };
    }
    {
      mode = "n";
      key = "<leader>gg";
      action.__raw = ''function() Snacks.lazygit() end'';
      options = { silent = true; desc = "Lazygit"; };
    }
    {
      mode = "n";
      key = "<leader>gB";
      action.__raw = ''function() Snacks.gitbrowse() end'';
      options = { silent = true; desc = "Git browse"; };
    }
    {
      mode = "n";
      key = "<leader>gb";
      action.__raw = ''function() Snacks.git.blame_line() end'';
      options = { silent = true; desc = "Git blame line"; };
    }
    {
      mode = ["n" "t"];
      key = "<C-/>";
      action.__raw = ''function() Snacks.terminal() end'';
      options = { silent = true; desc = "Toggle terminal"; };
    }
    {
      mode = ["n" "t"];
      key = "<C-_>";
      action.__raw = ''function() Snacks.terminal() end'';
      options = { silent = true; desc = "Toggle terminal"; };
    }
    {
      mode = "n";
      key = "]]";
      action.__raw = ''function() Snacks.words.jump(vim.v.count1) end'';
      options = { silent = true; desc = "Next word reference"; };
    }
    {
      mode = "n";
      key = "[[";
      action.__raw = ''function() Snacks.words.jump(-vim.v.count1) end'';
      options = { silent = true; desc = "Prev word reference"; };
    }
  ];

  extraConfigLua = ''
    -- Wire vim.ui.input to Snacks.input after snacks loads
    vim.ui.input = function(opts, on_confirm)
      Snacks.input(opts, on_confirm)
    end
  '';
}
