{
  plugins.mini = {
    enable = true;
    mockDevIcons = true;
    modules = {
      icons = {};
      comment = {
        options = {
          customCommentString = ''
            <cmd>lua require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring<cr>
          '';
        };
      };
      cursorword = {};
    };
  };
}
