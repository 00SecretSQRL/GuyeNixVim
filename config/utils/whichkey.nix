{
  plugins.which-key = {
    enable = true;
    settings = {
      icons = {
        breadcrumb = "»";
        group = "+";
        separator = "➜";
      };
      spec = [
        # General Mappings
        {
          __unkeyed-1 = "<leader>c";
          mode = ["n" "v"];
          group = "+code";
          icon = "󰘦";
        }
        {
          __unkeyed-1 = "<leader>d";
          mode = ["n" "v"];
          group = "+debug";
          icon = "󰆈";
        }
        {
          __unkeyed-1 = "<leader>f";
          mode = "n";
          group = "+find/file";
          icon = "󰈞";
        }
        {
          __unkeyed-1 = "<leader>g";
          mode = ["n" "v"];
          group = "+git";
          icon = "󰊢";
        }
        {
          __unkeyed-1 = "<leader>q";
          mode = "n";
          group = "+quit/session";
          icon = "󰅚";
        }
        {
          __unkeyed-1 = "<leader>s";
          mode = "n";
          group = "+search";
          icon = "󰍉";
        }
        {
          __unkeyed-1 = "<leader><Tab>";
          mode = "n";
          group = "+tab";
          icon = "󰓩";
        }
        {
          __unkeyed-1 = "<leader>t";
          mode = "n";
          group = "+test";
          icon = "󰙨";
        }
        {
          __unkeyed-1 = "<leader>u";
          mode = "n";
          group = "+ui";
          icon = "󰌘";
        }
        {
          __unkeyed-1 = "<leader>w";
          mode = "n";
          group = "+windows";
          icon = "󰖮";
        }
        {
          __unkeyed-1 = "<leader>x";
          mode = "n";
          group = "+diagnostics";
          icon = "󰅚";
        }
        {
          __unkeyed-1 = "<leader>e";
          mode = "n";
          group = "+explorer";
          icon = "󰉋";
        }
        {
          __unkeyed-1 = "<leader>o";
          mode = "n";
          group = "+oil";
          icon = "󰏗";
        }
        {
          __unkeyed-1 = "<leader>a";
          mode = "n";
          group = "+harpoon";
          icon = "󱡁";
        }
        {
          __unkeyed-1 = "<leader>b";
          mode = "n";
          group = "+buffer";
          icon = "󰓃";
        }
        {
          __unkeyed-1 = "<leader>p";
          mode = ["n" "v"];
          group = "+paste";
          icon = "󰆐";
        }
        {
          __unkeyed-1 = "<leader>y";
          mode = ["n" "v"];
          group = "+yank";
          icon = "󰆏";
        }

        # Tab Management
        {
          __unkeyed-1 = "<leader><tab>l";
          mode = "n";
          group = "Last tab";
        }
        {
          __unkeyed-1 = "<leader><tab>f";
          mode = "n";
          group = "First Tab";
        }
        {
          __unkeyed-1 = "<leader><tab>]";
          mode = "n";
          group = "Next Tab";
        }
        {
          __unkeyed-1 = "<leader><tab>d";
          mode = "n";
          group = "Close tab";
        }
        {
          __unkeyed-1 = "<leader><tab>[";
          mode = "n";
          group = "Previous Tab";
        }

        # Window Management
        {
          __unkeyed-1 = "<leader>ww";
          mode = "n";
          group = "Other window";
        }
        {
          __unkeyed-1 = "<leader>wd";
          mode = "n";
          group = "Delete window";
        }
        {
          __unkeyed-1 = "<leader>w-";
          mode = "n";
          group = "Split window below";
        }
        {
          __unkeyed-1 = "<leader>w|";
          mode = "n";
          group = "Split window right";
        }

        # Session Management
        {
          __unkeyed-1 = "<leader>qq";
          mode = "n";
          group = "Quit Neovim";
        }
        {
          __unkeyed-1 = "<leader>qs";
          mode = "n";
          group = "Save session";
        }
        {
          __unkeyed-1 = "<leader>ql";
          mode = "n";
          group = "Load session";
        }
        {
          __unkeyed-1 = "<leader>qd";
          mode = "n";
          group = "Delete session";
        }

        # UI Toggles
        {
          __unkeyed-1 = "<leader>ul";
          mode = "n";
          group = "Toggle line numbers";
        }
        {
          __unkeyed-1 = "<leader>uL";
          mode = "n";
          group = "Toggle relative line numbers";
        }
        {
          __unkeyed-1 = "<leader>uw";
          mode = "n";
          group = "Toggle word wrap";
        }
        {
          __unkeyed-1 = "<leader>un";
          mode = "n";
          group = "Dismiss All Notifications";
        }

        # LSP
        {
          __unkeyed-1 = "<leader>cw";
          mode = "n";
          group = "Workspace Symbol";
        }
        {
          __unkeyed-1 = "<leader>cr";
          mode = "n";
          group = "Rename";
        }
        {
          __unkeyed-1 = "<leader>ca";
          mode = "n";
          group = "Code Action";
        }
        {
          __unkeyed-1 = "<leader>cd";
          mode = "n";
          group = "Line Diagnostics";
        }

        # Git
        {
          __unkeyed-1 = "<leader>gh";
          mode = "n";
          group = "Preview hunk";
        }
        {
          __unkeyed-1 = "<leader>ghb";
          mode = "n";
          group = "Blame line";
        }
        {
          __unkeyed-1 = "<leader>ghd";
          mode = "n";
          group = "Diff this";
        }
        {
          __unkeyed-1 = "<leader>ghp";
          mode = "n";
          group = "Preview hunk";
        }
        {
          __unkeyed-1 = "<leader>ghR";
          mode = "n";
          group = "Reset buffer";
        }
        {
          __unkeyed-1 = "<leader>ghr";
          mode = "n";
          group = "Reset hunk";
        }
        {
          __unkeyed-1 = "<leader>ghs";
          mode = "n";
          group = "Stage hunk";
        }
        {
          __unkeyed-1 = "<leader>ghS";
          mode = "n";
          group = "Stage buffer";
        }
        {
          __unkeyed-1 = "<leader>ghu";
          mode = "n";
          group = "Undo stage hunk";
        }
        {
          __unkeyed-1 = "<leader>gg";
          mode = "n";
          group = "LazyGit";
        }

        # Formatting
        {
          __unkeyed-1 = "<leader>uf";
          mode = "n";
          group = "Format buffer";
        }
        {
          __unkeyed-1 = "<leader>cf";
          mode = "n";
          group = "Format buffer";
        }
        {
          __unkeyed-1 = "<leader>cF";
          mode = "n";
          group = "Format buffer (range)";
        }

        # Diagnostics
        {
          __unkeyed-1 = "<leader>xx";
          mode = "n";
          group = "Toggle diagnostics";
        }
        {
          __unkeyed-1 = "<leader>xX";
          mode = "n";
          group = "Toggle workspace diagnostics";
        }
        {
          __unkeyed-1 = "<leader>xt";
          mode = "n";
          group = "Toggle todo comments";
        }
        {
          __unkeyed-1 = "<leader>xQ";
          mode = "n";
          group = "Quickfix";
        }

        # Explorer
        {
          __unkeyed-1 = "<leader>E";
          mode = "n";
          group = "Explorer (root dir)";
        }
        {
          __unkeyed-1 = "<leader>be";
          mode = "n";
          group = "Explorer (buffer dir)";
        }
        {
          __unkeyed-1 = "<leader>ge";
          mode = "n";
          group = "Explorer (git root)";
        }

        # Buffer Management
        {
          __unkeyed-1 = "<leader>bd";
          mode = "n";
          group = "Delete buffer";
        }
        {
          __unkeyed-1 = "<leader>bb";
          mode = "n";
          group = "Buffer picker";
        }
        {
          __unkeyed-1 = "<leader>br";
          mode = "n";
          group = "Close buffers to the right";
        }
        {
          __unkeyed-1 = "<leader>bl";
          mode = "n";
          group = "Close buffers to the left";
        }
        {
          __unkeyed-1 = "<leader>bo";
          mode = "n";
          group = "Close other buffers";
        }
        {
          __unkeyed-1 = "<leader>bp";
          mode = "n";
          group = "Previous buffer";
        }
        {
          __unkeyed-1 = "<leader>bP";
          mode = "n";
          group = "Pin buffer";
        }

        # Debug
        {
          __unkeyed-1 = "<leader>dB";
          mode = "n";
          group = "Breakpoint Condition";
        }
        {
          __unkeyed-1 = "<leader>db";
          mode = "n";
          group = "Toggle Breakpoint";
        }
        {
          __unkeyed-1 = "<leader>dc";
          mode = "n";
          group = "Continue";
        }
        {
          __unkeyed-1 = "<leader>da";
          mode = "n";
          group = "Run with Args";
        }
        {
          __unkeyed-1 = "<leader>dC";
          mode = "n";
          group = "Run to cursor";
        }
        {
          __unkeyed-1 = "<leader>dg";
          mode = "n";
          group = "Go to line (no execute)";
        }
        {
          __unkeyed-1 = "<leader>di";
          mode = "n";
          group = "Step into";
        }
        {
          __unkeyed-1 = "<leader>dj";
          mode = "n";
          group = "Down";
        }
        {
          __unkeyed-1 = "<leader>dk";
          mode = "n";
          group = "Up";
        }
        {
          __unkeyed-1 = "<leader>dl";
          mode = "n";
          group = "Run Last";
        }
        {
          __unkeyed-1 = "<leader>do";
          mode = "n";
          group = "Step Out";
        }
        {
          __unkeyed-1 = "<leader>dO";
          mode = "n";
          group = "Step Over";
        }
        {
          __unkeyed-1 = "<leader>dp";
          mode = "n";
          group = "Pause";
        }
        {
          __unkeyed-1 = "<leader>dr";
          mode = "n";
          group = "Toggle REPL";
        }
        {
          __unkeyed-1 = "<leader>ds";
          mode = "n";
          group = "Session";
        }
        {
          __unkeyed-1 = "<leader>dt";
          mode = "n";
          group = "Terminate";
        }
        {
          __unkeyed-1 = "<leader>du";
          mode = "n";
          group = "Dap UI";
        }
        {
          __unkeyed-1 = "<leader>dw";
          mode = "n";
          group = "Widgets";
        }
        {
          __unkeyed-1 = "<leader>de";
          mode = ["n" "v"];
          group = "Eval";
        }

        # Telescope
        {
          __unkeyed-1 = "<leader><space>";
          mode = "n";
          group = "Find project files";
        }
        {
          __unkeyed-1 = "<leader>fg";
          mode = "n";
          group = "Grep (root dir)";
        }
        {
          __unkeyed-1 = "<leader>:";
          mode = "n";
          group = "Command History";
        }
        {
          __unkeyed-1 = "<leader>fa";
          mode = "n";
          group = "Find project files";
        }
        {
          __unkeyed-1 = "<leader>fr";
          mode = "n";
          group = "Recent";
        }
        {
          __unkeyed-1 = "<leader>fb";
          mode = "n";
          group = "Buffers";
        }
        {
          __unkeyed-1 = "<leader>fp";
          mode = "n";
          group = "Projects";
        }
        {
          __unkeyed-1 = "<leader>gc";
          mode = "n";
          group = "Git commits";
        }
        {
          __unkeyed-1 = "<leader>gs";
          mode = "n";
          group = "Git status";
        }
        {
          __unkeyed-1 = "<leader>sa";
          mode = "n";
          group = "Auto Commands";
        }
        {
          __unkeyed-1 = "<leader>sb";
          mode = "n";
          group = "Buffer search";
        }
        {
          __unkeyed-1 = "<leader>sc";
          mode = "n";
          group = "Command History";
        }
        {
          __unkeyed-1 = "<leader>sC";
          mode = "n";
          group = "Commands";
        }
        {
          __unkeyed_1 = "<leader>sD";
          mode = "n";
          group = "Workspace diagnostics";
        }
        {
          __unkeyed_1 = "<leader>sd";
          mode = "n";
          group = "Document diagnostics";
        }
        {
          __unkeyed_1 = "<leader>sh";
          mode = "n";
          group = "Help pages";
        }
        {
          __unkeyed_1 = "<leader>sH";
          mode = "n";
          group = "Search Highlight Groups";
        }
        {
          __unkeyed_1 = "<leader>sk";
          mode = "n";
          group = "Keymaps";
        }
        {
          __unkeyed_1 = "<leader>sM";
          mode = "n";
          group = "Man pages";
        }
        {
          __unkeyed_1 = "<leader>sm";
          mode = "n";
          group = "Jump to Mark";
        }
        {
          __unkeyed_1 = "<leader>so";
          mode = "n";
          group = "Options";
        }
        {
          __unkeyed_1 = "<leader>sR";
          mode = "n";
          group = "Resume";
        }
        {
          __unkeyed_1 = "<leader>st";
          mode = "n";
          group = "Todo (Telescope)";
        }
        {
          __unkeyed_1 = "<leader>uC";
          mode = "n";
          group = "Colorscheme preview";
        }

        # Test
        {
          __unkeyed-1 = "<leader>tt";
          mode = "n";
          group = "Run test";
        }
        {
          __unkeyed-1 = "<leader>tT";
          mode = "n";
          group = "Run test (verbose)";
        }
        {
          __unkeyed-1 = "<leader>tr";
          mode = "n";
          group = "Run nearest test";
        }
        {
          __unkeyed-1 = "<leader>td";
          mode = "n";
          group = "Debug test";
        }
        {
          __unkeyed-1 = "<leader>ts";
          mode = "n";
          group = "Stop test";
        }
        {
          __unkeyed-1 = "<leader>to";
          mode = "n";
          group = "Output panel";
        }
        {
          __unkeyed-1 = "<leader>tO";
          mode = "n";
          group = "Toggle output panel";
        }
        {
          __unkeyed-1 = "<leader>tS";
          mode = "n";
          group = "Toggle summary";
        }

        # Utilities
        {
          __unkeyed-1 = "<leader>ut";
          mode = "n";
          group = "Undo tree";
        }
        {
          __unkeyed-1 = "<leader>cp";
          mode = "n";
          group = "Markdown preview";
        }
        {
          __unkeyed-1 = "<leader>co";
          mode = "n";
          group = "Open Copilot panel";
        }
        
        # Copilot Chat mappings
        {
          __unkeyed-1 = "<leader>cc";
          mode = ["n" "v"];
          group = "+copilot-chat";
          icon = "󰭹";
        }
        {
          __unkeyed-1 = "<leader>cc";
          mode = "n";
          desc = "Open Copilot Chat";
          icon = "󰭹";
        }
        {
          __unkeyed-1 = "<leader>cc";
          mode = "v";
          desc = "Chat about selection";
          icon = "󰭹";
        }
        {
          __unkeyed-1 = "<leader>ccq";
          mode = "n";
          desc = "Close Copilot Chat";
          icon = "󰅖";
        }
        {
          __unkeyed-1 = "<leader>ccr";
          mode = "n";
          desc = "Reset Copilot Chat";
          icon = "󰑓";
        }
        {
          __unkeyed-1 = "<leader>ccr";
          mode = "v";
          desc = "Review selected code";
          icon = "󰓕";
        }
        {
          __unkeyed-1 = "<leader>cce";
          mode = ["n" "v"];
          desc = "Explain code";
          icon = "󰋖";
        }
        {
          __unkeyed-1 = "<leader>ccf";
          mode = ["n" "v"];
          desc = "Fix code";
          icon = "󰁨";
        }
        {
          __unkeyed-1 = "<leader>cco";
          mode = "n";
          desc = "Optimize code";
          icon = "󰓕";
        }
        {
          __unkeyed-1 = "<leader>ccd";
          mode = "n";
          desc = "Generate docs";
          icon = "󰈙";
        }
        {
          __unkeyed-1 = "<leader>cct";
          mode = "n";
          desc = "Generate tests";
          icon = "󰙨";
        }
        {
          __unkeyed-1 = "<leader>kt";
          mode = "n";
          group = "Test keypress display";
        }
        {
          __unkeyed-1 = "<leader>D";
          mode = ["n" "v"];
          group = "Delete to void register";
        }

        # Snacks
        {
          __unkeyed-1 = "<leader>dd";
          mode = "n";
          group = "Open dashboard";
        }
        {
          __unkeyed-1 = "<leader>qf";
          mode = "n";
          group = "Quick file picker";
        }
        {
          __unkeyed-1 = "<leader>ss";
          mode = "n";
          group = "New scratch buffer";
        }
        {
          __unkeyed-1 = "<leader>tt";
          mode = "n";
          group = "Open terminal";
        }
      ];
      win = {
        border = "none";
        wo.winblend = 0;
      };
    };
  };
}
