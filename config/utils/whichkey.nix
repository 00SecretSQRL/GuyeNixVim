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
        # ── Group labels ──────────────────────────────────────────────────────
        { __unkeyed-1 = "<leader>c";  mode = ["n" "v"]; group = "+code";          icon = "󰘦"; }
        { __unkeyed-1 = "<leader>cc"; mode = ["n" "v"]; group = "+copilot-chat";  icon = "󰭹"; }
        { __unkeyed-1 = "<leader>d";  mode = ["n" "v"]; group = "+debug";         icon = "󰆈"; }
        { __unkeyed-1 = "<leader>f";  mode = "n";       group = "+find/file";     icon = "󰈞"; }
        { __unkeyed-1 = "<leader>g";  mode = ["n" "v"]; group = "+git";           icon = "󰊢"; }
        { __unkeyed-1 = "<leader>gh"; mode = ["n" "v"]; group = "+hunks";         icon = "󰊢"; }
        { __unkeyed-1 = "<leader>q";  mode = "n";       group = "+quit/session";  icon = "󰅚"; }
        { __unkeyed-1 = "<leader>s";  mode = "n";       group = "+search";        icon = "󰍉"; }
        { __unkeyed-1 = "<leader><Tab>"; mode = "n";    group = "+tab";           icon = "󰓩"; }
        { __unkeyed-1 = "<leader>u";  mode = "n";       group = "+ui";            icon = "󰌘"; }
        { __unkeyed-1 = "<leader>w";  mode = "n";       group = "+windows";       icon = "󰖮"; }
        { __unkeyed-1 = "<leader>x";  mode = "n";       group = "+diagnostics";   icon = "󰅚"; }
        { __unkeyed-1 = "<leader>b";  mode = "n";       group = "+buffer";        icon = "󰓃"; }
        { __unkeyed-1 = "<leader>D";  mode = ["n" "v"]; group = "Delete→void";    icon = "󰆐"; }
        { __unkeyed-1 = "<leader>y";  mode = ["n" "v"]; group = "+yank";          icon = "󰆏"; }

        # ── Tabs ──────────────────────────────────────────────────────────────
        { __unkeyed-1 = "<leader><Tab>l"; mode = "n"; desc = "Last tab"; }
        { __unkeyed-1 = "<leader><Tab>f"; mode = "n"; desc = "First tab"; }
        { __unkeyed-1 = "<leader><Tab>]"; mode = "n"; desc = "Next tab"; }
        { __unkeyed-1 = "<leader><Tab>["; mode = "n"; desc = "Prev tab"; }
        { __unkeyed-1 = "<leader><Tab>d"; mode = "n"; desc = "Close tab"; }

        # ── Windows ───────────────────────────────────────────────────────────
        { __unkeyed-1 = "<leader>ww"; mode = "n"; desc = "Other window"; }
        { __unkeyed-1 = "<leader>wd"; mode = "n"; desc = "Delete window"; }
        { __unkeyed-1 = "<leader>w-"; mode = "n"; desc = "Split below"; }
        { __unkeyed-1 = "<leader>w|"; mode = "n"; desc = "Split right"; }

        # ── Session ───────────────────────────────────────────────────────────
        { __unkeyed-1 = "<leader>qq"; mode = "n"; desc = "Quit all"; }
        { __unkeyed-1 = "<leader>qs"; mode = "n"; desc = "Restore session"; }
        { __unkeyed-1 = "<leader>ql"; mode = "n"; desc = "Restore last session"; }
        { __unkeyed-1 = "<leader>qd"; mode = "n"; desc = "Don't save session"; }

        # ── UI toggles ────────────────────────────────────────────────────────
        { __unkeyed-1 = "<leader>ul"; mode = "n"; desc = "Toggle line numbers"; }
        { __unkeyed-1 = "<leader>uL"; mode = "n"; desc = "Toggle relative numbers"; }
        { __unkeyed-1 = "<leader>uw"; mode = "n"; desc = "Toggle wrap"; }
        { __unkeyed-1 = "<leader>uh"; mode = "n"; desc = "Toggle inlay hints"; }
        { __unkeyed-1 = "<leader>un"; mode = "n"; desc = "Dismiss notifications"; }
        { __unkeyed-1 = "<leader>uC"; mode = "n"; desc = "Colorscheme preview"; }
        { __unkeyed-1 = "<leader>ut"; mode = "n"; desc = "Undo tree"; }

        # ── LSP / Code ────────────────────────────────────────────────────────
        { __unkeyed-1 = "<leader>ca"; mode = ["n" "v"]; desc = "Code action"; }
        { __unkeyed-1 = "<leader>cr"; mode = "n"; desc = "Rename"; }
        { __unkeyed-1 = "<leader>cw"; mode = "n"; desc = "Workspace symbols"; }
        { __unkeyed-1 = "<leader>cd"; mode = "n"; desc = "Line diagnostics"; }
        { __unkeyed-1 = "<leader>cs"; mode = "n"; desc = "Symbols (Trouble)"; }
        { __unkeyed-1 = "<leader>cl"; mode = "n"; desc = "LSP refs (Trouble)"; }
        { __unkeyed-1 = "<leader>cf"; mode = "n"; desc = "Format buffer"; }
        { __unkeyed-1 = "<leader>cF"; mode = "n"; desc = "Format range"; }
        { __unkeyed-1 = "<leader>cp"; mode = "n"; desc = "Markdown preview"; }

        # ── Copilot Chat ──────────────────────────────────────────────────────
        { __unkeyed-1 = "<leader>cc";  mode = ["n" "v"]; desc = "Open chat"; }
        { __unkeyed-1 = "<leader>ccq"; mode = "n";       desc = "Close chat"; }
        { __unkeyed-1 = "<leader>ccr"; mode = ["n" "v"]; desc = "Reset/Review"; }
        { __unkeyed-1 = "<leader>cce"; mode = ["n" "v"]; desc = "Explain"; }
        { __unkeyed-1 = "<leader>ccf"; mode = ["n" "v"]; desc = "Fix"; }
        { __unkeyed-1 = "<leader>cco"; mode = "n";       desc = "Optimize"; }
        { __unkeyed-1 = "<leader>ccd"; mode = "n";       desc = "Docs"; }
        { __unkeyed-1 = "<leader>cct"; mode = "n";       desc = "Tests"; }
        { __unkeyed-1 = "<leader>ccs"; mode = "n";       desc = "Available models"; }

        # ── Git (snacks + gitsigns) ───────────────────────────────────────────
        { __unkeyed-1 = "<leader>gg";  mode = "n"; desc = "Lazygit"; }
        { __unkeyed-1 = "<leader>gB";  mode = "n"; desc = "Git browse"; }
        { __unkeyed-1 = "<leader>gb";  mode = "n"; desc = "Blame line"; }
        { __unkeyed-1 = "<leader>gc";  mode = "n"; desc = "Git commits (fzf)"; }
        { __unkeyed-1 = "<leader>gs";  mode = "n"; desc = "Git status (fzf)"; }
        { __unkeyed-1 = "<leader>ge";  mode = "n"; desc = "Git explorer (neo-tree)"; }
        { __unkeyed-1 = "<leader>ghs"; mode = ["n" "v"]; desc = "Stage hunk"; }
        { __unkeyed-1 = "<leader>ghr"; mode = ["n" "v"]; desc = "Reset hunk"; }
        { __unkeyed-1 = "<leader>ghS"; mode = "n"; desc = "Stage buffer"; }
        { __unkeyed-1 = "<leader>ghu"; mode = "n"; desc = "Undo stage hunk"; }
        { __unkeyed-1 = "<leader>ghR"; mode = "n"; desc = "Reset buffer"; }
        { __unkeyed-1 = "<leader>ghp"; mode = "n"; desc = "Preview hunk"; }
        { __unkeyed-1 = "<leader>ghd"; mode = "n"; desc = "Diff this"; }

        # ── Find (fzf-lua) ────────────────────────────────────────────────────
        { __unkeyed-1 = "<leader><space>"; mode = "n"; desc = "Find files"; }
        { __unkeyed-1 = "<leader>fg";  mode = "n"; desc = "Grep"; }
        { __unkeyed-1 = "<leader>fa";  mode = "n"; desc = "Find files"; }
        { __unkeyed-1 = "<leader>fr";  mode = "n"; desc = "Recent files"; }
        { __unkeyed-1 = "<leader>fb";  mode = "n"; desc = "Buffers"; }
        { __unkeyed-1 = "<leader>:";   mode = "n"; desc = "Command history"; }

        # ── Search (fzf-lua) ──────────────────────────────────────────────────
        { __unkeyed-1 = "<leader>sa";  mode = "n"; desc = "Auto commands"; }
        { __unkeyed-1 = "<leader>sb";  mode = "n"; desc = "Buffer fuzzy"; }
        { __unkeyed-1 = "<leader>sc";  mode = "n"; desc = "Command history"; }
        { __unkeyed-1 = "<leader>sC";  mode = "n"; desc = "Commands"; }
        { __unkeyed-1 = "<leader>sd";  mode = "n"; desc = "Document diagnostics"; }
        { __unkeyed-1 = "<leader>sD";  mode = "n"; desc = "Workspace diagnostics"; }
        { __unkeyed-1 = "<leader>sh";  mode = "n"; desc = "Help pages"; }
        { __unkeyed-1 = "<leader>sH";  mode = "n"; desc = "Highlight groups"; }
        { __unkeyed-1 = "<leader>sk";  mode = "n"; desc = "Keymaps"; }
        { __unkeyed-1 = "<leader>sM";  mode = "n"; desc = "Man pages"; }
        { __unkeyed-1 = "<leader>sm";  mode = "n"; desc = "Marks"; }
        { __unkeyed-1 = "<leader>so";  mode = "n"; desc = "Options"; }
        { __unkeyed-1 = "<leader>sR";  mode = "n"; desc = "Resume picker"; }
        { __unkeyed-1 = "<leader>ss";  mode = "n"; desc = "Workspace symbols"; }
        { __unkeyed-1 = "<leader>sS";  mode = "n"; desc = "Document symbols"; }
        { __unkeyed-1 = "<leader>st";  mode = "n"; desc = "Todo comments"; }

        # ── Buffer ────────────────────────────────────────────────────────────
        { __unkeyed-1 = "<leader>b";   mode = "n"; desc = "Buffers (fzf)"; }
        { __unkeyed-1 = "<leader>be";  mode = "n"; desc = "Buffer explorer"; }
        { __unkeyed-1 = "<leader>bd";  mode = "n"; desc = "Delete buffer"; }

        # ── Explorer ──────────────────────────────────────────────────────────
        { __unkeyed-1 = "<leader>e";  mode = "n"; desc = "Toggle neo-tree"; }
        { __unkeyed-1 = "<leader>E";  mode = "n"; desc = "Neo-tree (cwd)"; }

        # ── Diagnostics / Trouble ─────────────────────────────────────────────
        { __unkeyed-1 = "<leader>xx"; mode = "n"; desc = "Diagnostics toggle"; }
        { __unkeyed-1 = "<leader>xX"; mode = "n"; desc = "Buffer diagnostics"; }
        { __unkeyed-1 = "<leader>xL"; mode = "n"; desc = "Location list"; }
        { __unkeyed-1 = "<leader>xQ"; mode = "n"; desc = "Quickfix list"; }
        { __unkeyed-1 = "<leader>xt"; mode = "n"; desc = "Todo (Trouble)"; }

        # ── Debug ─────────────────────────────────────────────────────────────
        { __unkeyed-1 = "<leader>dB"; mode = "n"; desc = "Breakpoint condition"; }
        { __unkeyed-1 = "<leader>db"; mode = "n"; desc = "Toggle breakpoint"; }
        { __unkeyed-1 = "<leader>dc"; mode = "n"; desc = "Continue"; }
        { __unkeyed-1 = "<leader>da"; mode = "n"; desc = "Run with args"; }
        { __unkeyed-1 = "<leader>dC"; mode = "n"; desc = "Run to cursor"; }
        { __unkeyed-1 = "<leader>di"; mode = "n"; desc = "Step into"; }
        { __unkeyed-1 = "<leader>do"; mode = "n"; desc = "Step out"; }
        { __unkeyed-1 = "<leader>dO"; mode = "n"; desc = "Step over"; }
        { __unkeyed-1 = "<leader>dl"; mode = "n"; desc = "Run last"; }
        { __unkeyed-1 = "<leader>dp"; mode = "n"; desc = "Pause"; }
        { __unkeyed-1 = "<leader>dr"; mode = "n"; desc = "Toggle REPL"; }
        { __unkeyed-1 = "<leader>dt"; mode = "n"; desc = "Terminate"; }
        { __unkeyed-1 = "<leader>du"; mode = "n"; desc = "DAP UI"; }
        { __unkeyed-1 = "<leader>dw"; mode = "n"; desc = "Widgets"; }
        { __unkeyed-1 = "<leader>de"; mode = ["n" "v"]; desc = "Eval"; }

        # ── Harpoon ───────────────────────────────────────────────────────────
        { __unkeyed-1 = "<leader>a";  mode = "n"; desc = "Harpoon add"; icon = "󱡁"; }
      ];

      win = {
        border = "none";
        wo.winblend = 0;
      };
    };
  };
}
