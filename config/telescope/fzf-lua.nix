{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [ fzf-lua ];

  extraConfigLua = ''
    local fzf = require("fzf-lua")

    fzf.setup({
      winopts = {
        height = 0.85,
        width = 0.87,
        row = 0.35,
        col = 0.5,
        border = "rounded",
        preview = {
          border = "border",
          wrap = "nowrap",
          hidden = "nohidden",
          vertical = "down:45%",
          horizontal = "right:55%",
          layout = "horizontal",
          delay = 50,
        },
      },
      fzf_opts = {
        ["--ansi"] = true,
        ["--info"] = "inline",
        ["--height"] = "100%",
        ["--layout"] = "reverse",
        ["--border"] = "none",
        ["--tiebreak"] = "index",
      },
      files = {
        cmd = "fd --type f --hidden --follow --exclude .git",
        git_icons = true,
        file_icons = true,
        color_icons = true,
      },
      grep = {
        cmd = "rg --vimgrep --color=always --smart-case --hidden --no-ignore",
        rg_opts = "--hidden --no-ignore --color=always --smart-case --max-columns=4096 -e",
        git_icons = true,
        file_icons = true,
        color_icons = true,
      },
      defaults = {
        git_icons = true,
        file_icons = true,
        color_icons = true,
        formatter = "path.filename_first",
      },
      keymap = {
        builtin = {
          ["<C-d>"] = "preview-page-down",
          ["<C-u>"] = "preview-page-up",
          ["<C-f>"] = "preview-page-down",
          ["<C-b>"] = "preview-page-up",
        },
        fzf = {
          ["ctrl-j"] = "down",
          ["ctrl-k"] = "up",
          ["ctrl-q"] = "select-all+accept",
        },
      },
      actions = {
        files = {
          ["default"] = fzf.actions.file_edit_or_qf,
          ["ctrl-s"]  = fzf.actions.file_split,
          ["ctrl-v"]  = fzf.actions.file_vsplit,
          ["ctrl-t"]  = fzf.actions.file_tabedit,
        },
      },
      lsp = {
        async_or_timeout = true,
        symbols = {
          symbol_style = 1,
        },
      },
    })

    -- Register as vim.ui.select provider
    fzf.register_ui_select()
  '';

  keymaps = [
    { mode = "n"; key = "<leader><space>"; action.__raw = ''function() require("fzf-lua").files() end''; options = { desc = "Find files"; silent = true; }; }
    { mode = "n"; key = "<leader>fg"; action.__raw = ''function() require("fzf-lua").live_grep() end''; options = { desc = "Grep (root dir)"; silent = true; }; }
    { mode = "n"; key = "<leader>fa"; action.__raw = ''function() require("fzf-lua").files() end''; options = { desc = "Find files"; silent = true; }; }
    { mode = "n"; key = "<leader>fr"; action.__raw = ''function() require("fzf-lua").oldfiles() end''; options = { desc = "Recent files"; silent = true; }; }
    { mode = "n"; key = "<leader>fb"; action.__raw = ''function() require("fzf-lua").buffers() end''; options = { desc = "Buffers"; silent = true; }; }
    { mode = "n"; key = "<leader>b";  action.__raw = ''function() require("fzf-lua").buffers() end''; options = { desc = "Buffers"; silent = true; }; }
    { mode = "n"; key = "<C-p>";      action.__raw = ''function() require("fzf-lua").git_files() end''; options = { desc = "Git files"; silent = true; }; }
    { mode = "n"; key = "<leader>gc"; action.__raw = ''function() require("fzf-lua").git_commits() end''; options = { desc = "Git commits"; silent = true; }; }
    { mode = "n"; key = "<leader>gs"; action.__raw = ''function() require("fzf-lua").git_status() end''; options = { desc = "Git status"; silent = true; }; }
    { mode = "n"; key = "<leader>:";  action.__raw = ''function() require("fzf-lua").command_history() end''; options = { desc = "Command history"; silent = true; }; }
    { mode = "n"; key = "<leader>sa"; action.__raw = ''function() require("fzf-lua").autocmds() end''; options = { desc = "Auto commands"; silent = true; }; }
    { mode = "n"; key = "<leader>sb"; action.__raw = ''function() require("fzf-lua").grep_curbuf() end''; options = { desc = "Buffer fuzzy find"; silent = true; }; }
    { mode = "n"; key = "<leader>sc"; action.__raw = ''function() require("fzf-lua").command_history() end''; options = { desc = "Command history"; silent = true; }; }
    { mode = "n"; key = "<leader>sC"; action.__raw = ''function() require("fzf-lua").commands() end''; options = { desc = "Commands"; silent = true; }; }
    { mode = "n"; key = "<leader>sD"; action.__raw = ''function() require("fzf-lua").diagnostics_workspace() end''; options = { desc = "Workspace diagnostics"; silent = true; }; }
    { mode = "n"; key = "<leader>sd"; action.__raw = ''function() require("fzf-lua").diagnostics_document() end''; options = { desc = "Document diagnostics"; silent = true; }; }
    { mode = "n"; key = "<leader>sh"; action.__raw = ''function() require("fzf-lua").help_tags() end''; options = { desc = "Help pages"; silent = true; }; }
    { mode = "n"; key = "<leader>sH"; action.__raw = ''function() require("fzf-lua").highlights() end''; options = { desc = "Highlight groups"; silent = true; }; }
    { mode = "n"; key = "<leader>sk"; action.__raw = ''function() require("fzf-lua").keymaps() end''; options = { desc = "Keymaps"; silent = true; }; }
    { mode = "n"; key = "<leader>sM"; action.__raw = ''function() require("fzf-lua").man_pages() end''; options = { desc = "Man pages"; silent = true; }; }
    { mode = "n"; key = "<leader>sm"; action.__raw = ''function() require("fzf-lua").marks() end''; options = { desc = "Marks"; silent = true; }; }
    { mode = "n"; key = "<leader>so"; action.__raw = ''function() require("fzf-lua").vim_options() end''; options = { desc = "Options"; silent = true; }; }
    { mode = "n"; key = "<leader>sR"; action.__raw = ''function() require("fzf-lua").resume() end''; options = { desc = "Resume last picker"; silent = true; }; }
    { mode = "n"; key = "<leader>uC"; action.__raw = ''function() require("fzf-lua").colorschemes() end''; options = { desc = "Colorschemes"; silent = true; }; }
    { mode = "n"; key = "<leader>st"; action.__raw = ''function() require("fzf-lua").grep({ search = "TODO|FIXME|HACK|NOTE", no_esc = true }) end''; options = { desc = "Todo comments"; silent = true; }; }
    { mode = "n"; key = "<leader>sS"; action.__raw = ''function() require("fzf-lua").lsp_document_symbols() end''; options = { desc = "Document symbols"; silent = true; }; }
    { mode = "n"; key = "<leader>ss"; action.__raw = ''function() require("fzf-lua").lsp_workspace_symbols() end''; options = { desc = "Workspace symbols"; silent = true; }; }
  ];
}
