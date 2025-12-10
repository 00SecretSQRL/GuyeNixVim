{
  plugins.snacks = {
    enable = true;
    settings = {
      bigfile = {
        enabled = true;
        size = 1000000; # 1MB threshold
        disable = [
          "treesitter"
          "lsp"
          "formatting"
        ];
      };
      dashboard = {
        enabled = false;
        welcome_message = "Welcome to Neovim!";
        footer = "Press <leader> to see available keymaps";
        shortcuts = [
          {
            key = "f";
            desc = "Find files";
            action = "Telescope find_files";
          }
          {
            key = "g";
            desc = "Git status";
            action = "LazyGit";
          }
          {
            key = "r";
            desc = "Recent files";
            action = "Telescope oldfiles";
          }
          {
            key = "c";
            desc = "Config";
            action = "edit ~/.config/nvim/init.lua";
          }
        ];
      };
      indent = {
        enabled = true;
        char = "│";
        context_char = "┊";
        highlight = "Comment";
        context_highlight = "Comment";
        priority = 100;
      };
      input = {
        enabled = true;
        border = "rounded";
        title = "Input";
        title_pos = "center";
        width = 50;
        height = 1;
        row = "50%";
        col = "50%";
      };
      notifier = {
        enabled = true;
        position = "top_right";
        timeout = 3000;
        border = "rounded";
        max_width = 50;
        max_height = 10;
      };
      quickfile = {
        enabled = true;
        border = "rounded";
        title = "Quick File";
        title_pos = "center";
        width = 60;
        height = 20;
        row = "10%";
        col = "20%";
        mappings = {
          open = "<CR>";
          close = "q";
          delete = "d";
          rename = "r";
        };
      };
      scratch = {
        enabled = true;
        border = "rounded";
        title = "Scratch Buffer";
        title_pos = "center";
        width = 80;
        height = 20;
        row = "10%";
        col = "10%";
        filetype = "markdown";
      };
      scroll = {
        enabled = true;
        smooth = true;
        speed = 1;
        easing = "ease";
      };
      scope = {
        enabled = true;
        highlight = "Visual";
        priority = 50;
      };
      statuscolumn = {
        enabled = true;
        signs = true;
        numbers = true;
        fold = true;
        separator = " ";
      };
      terminal = {
        enabled = true;
        border = "rounded";
        title = "Terminal";
        title_pos = "center";
        width = 80;
        height = 20;
        row = "10%";
        col = "10%";
        shell = "zsh";
      };
      words = {
        enabled = true;
        highlight = "Search";
        priority = 50;
        timeout = 1000;
      };
    };
  };

  # Add keymaps for snacks modules
  keymaps = [
    # Dashboard
    {
      mode = "n";
      key = "<leader>dd";
      action = "<cmd>lua require('snacks').dashboard()<CR>";
      options = {
        silent = true;
        desc = "Open dashboard";
      };
    }
    # Quick file
    {
      mode = "n";
      key = "<leader>qf";
      action = "<cmd>lua require('snacks').quickfile()<CR>";
      options = {
        silent = true;
        desc = "Quick file picker";
      };
    }
    # Scratch buffer
    {
      mode = "n";
      key = "<leader>ss";
      action = "<cmd>lua require('snacks').scratch()<CR>";
      options = {
        silent = true;
        desc = "New scratch buffer";
      };
    }
    # Terminal
    {
      mode = "n";
      key = "<leader>tt";
      action = "<cmd>lua require('snacks').terminal()<CR>";
      options = {
        silent = true;
        desc = "Open terminal";
      };
    }
  ];
}
