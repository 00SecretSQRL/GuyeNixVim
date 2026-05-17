{ lib, ... }:
{
  plugins.lsp = {
    enable = true;
    capabilities = "offsetEncoding = 'utf-16'";
    servers = {
      clangd.enable = true;
      lua_ls = {
        enable = true;
        extraOptions.settings.Lua = {
          completion.callSnippet = "Replace";
          telemetry.enabled = false;
          hint.enable = true;
        };
      };
      nil_ls.enable = true;
      eslint.enable = true;
      pyright.enable = true;
      ruff = {
        enable = true;
        package = null;
      };
      gopls = {
        enable = true;
        extraOptions.settings.gopls = {
          analyses = {
            unusedparams = true;
            shadow = true;
          };
          staticcheck = true;
          usePlaceholders = true;
          completeUnimported = true;
          hints = {
            assignVariableTypes = true;
            compositeLiteralFields = true;
            compositeLiteralTypes = true;
            constantValues = true;
            functionTypeParameters = true;
            parameterNames = true;
            rangeVariableTypes = true;
          };
          codelenses = {
            gc_details = true;
            generate = true;
            test = true;
          };
        };
      };
      terraformls.enable = true;
      rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
        settings = {
          checkOnSave = true;
          check.command = "clippy";
          procMacro.enable = true;
          inlayHints = {
            bindingModeHints.enable = false;
            chainingHints.enable = true;
            closingBraceHints.enable = true;
            closureReturnTypeHints.enable = "with_block";
            parameterHints.enable = true;
            typeHints.enable = true;
          };
        };
      };
    };

    keymaps = {
      silent = true;
      lspBuf = {
        gd = { action = "definition"; desc = "Goto Definition"; };
        gr = { action = "references"; desc = "Goto References"; };
        gD = { action = "declaration"; desc = "Goto Declaration"; };
        gI = { action = "implementation"; desc = "Goto Implementation"; };
        gT = { action = "type_definition"; desc = "Type Definition"; };
        K  = { action = "hover"; desc = "Hover"; };
        "<leader>cr" = { action = "rename"; desc = "Rename"; };
        "<leader>ca" = { action = "code_action"; desc = "Code Action"; };
        "<leader>cw" = { action = "workspace_symbol"; desc = "Workspace Symbol"; };
        "<C-k>" = { action = "signature_help"; desc = "Signature Help"; };
      };
      diagnostic = {
        "<leader>cd" = { action = "open_float"; desc = "Line Diagnostics"; };
        "[d" = { action = "goto_next"; desc = "Next Diagnostic"; };
        "]d" = { action = "goto_prev"; desc = "Previous Diagnostic"; };
      };
    };
  };

  extraConfigLua = ''
    -- Neovim 0.12+: configure borders via vim.lsp.config
    vim.lsp.config("*", {
      capabilities = {
        textDocument = {
          completion = {
            completionItem = {
              snippetSupport = true,
            },
          },
        },
      },
    })

    vim.diagnostic.config({
      float = { border = "rounded" },
      virtual_text = { prefix = "●" },
      signs = true,
      underline = true,
      update_in_insert = false,
      severity_sort = true,
    })

    vim.lsp.log.set_level("error")

    -- Inlay hints toggle (Neovim 0.10+)
    vim.keymap.set("n", "<leader>uh", function()
      vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
    end, { desc = "Toggle Inlay Hints" })

    -- Enable inlay hints on attach
    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client and client:supports_method("textDocument/inlayHint") then
          vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
        end
      end,
    })
  '';
}
