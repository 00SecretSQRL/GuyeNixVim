{pkgs, ...}: {
  plugins.blink-cmp = {
    enable = true;
    settings = {
      keymap = {
        preset = "none";
        "<C-j>" = [ "select_next" "fallback" ];
        "<C-k>" = [ "select_prev" "fallback" ];
        "<C-e>" = [ "cancel" ];
        "<C-b>" = [ "scroll_documentation_up" "fallback" ];
        "<C-f>" = [ "scroll_documentation_down" "fallback" ];
        "<C-Space>" = [ "show" "show_documentation" "hide_documentation" ];
        "<CR>" = [ "accept" "fallback" ];
        "<Tab>" = [ "snippet_forward" "fallback" ];
        "<S-Tab>" = [ "snippet_backward" "fallback" ];
      };

      appearance = {
        use_nvim_cmp_as_default = false;
        nerd_font_variant = "mono";
      };

      completion = {
        accept.auto_brackets.enabled = true;
        documentation = {
          auto_show = true;
          auto_show_delay_ms = 50;
          window.border = "rounded";
        };
        ghost_text.enabled = true;
        menu = {
          border = "rounded";
          draw = {
            treesitter = [ "lsp" ];
            columns = [
              { __unkeyed-1 = "label"; }
              { __unkeyed-1 = "kind_icon"; gap = 1; }
            ];
          };
        };
        list.selection = {
          preselect = true;
          auto_insert = false;
        };
      };

      sources = {
        default = [ "lsp" "path" "snippets" "buffer" "copilot" ];
        providers = {
          copilot = {
            name = "copilot";
            module = "blink-cmp-copilot";
            score_offset = 100;
            async = true;
          };
        };
      };

      snippets.preset = "luasnip";

      fuzzy.implementation = "prefer_rust_with_warning";
    };
  };

  extraPlugins = with pkgs.vimPlugins; [ blink-cmp-copilot ];
}
