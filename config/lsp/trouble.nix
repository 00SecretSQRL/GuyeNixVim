{
  plugins.trouble = {
    enable = true;
    settings = {
      auto_close = true;
      use_diagnostic_signs = true;
      modes = {
        lsp_references = {
          params = {
            include_declaration = true;
          };
        };
      };
    };
  };

  keymaps = [
    { mode = "n"; key = "<leader>xx"; action = "<cmd>Trouble diagnostics toggle<cr>"; options = { silent = true; desc = "Diagnostics (Trouble)"; }; }
    { mode = "n"; key = "<leader>xX"; action = "<cmd>Trouble diagnostics toggle filter.buf=0<cr>"; options = { silent = true; desc = "Buffer Diagnostics (Trouble)"; }; }
    { mode = "n"; key = "<leader>cs"; action = "<cmd>Trouble symbols toggle focus=false<cr>"; options = { silent = true; desc = "Symbols (Trouble)"; }; }
    { mode = "n"; key = "<leader>cl"; action = "<cmd>Trouble lsp toggle focus=false win.position=right<cr>"; options = { silent = true; desc = "LSP definitions (Trouble)"; }; }
    { mode = "n"; key = "<leader>xL"; action = "<cmd>Trouble loclist toggle<cr>"; options = { silent = true; desc = "Location List (Trouble)"; }; }
    { mode = "n"; key = "<leader>xQ"; action = "<cmd>Trouble qflist toggle<cr>"; options = { silent = true; desc = "Quickfix List (Trouble)"; }; }
    { mode = "n"; key = "<leader>xt"; action = "<cmd>Trouble todo toggle<cr>"; options = { silent = true; desc = "Todo (Trouble)"; }; }
  ];
}
