{
  plugins.mini = {
    enable = false;
    mockDevIcons = true;
    modules = {
      icons = {
        enable = true;
      };
      comment = {
        options = {
          customCommentString = ''
            <cmd>lua require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring<cr>
          '';
        };
      };
      cursorword = { };
    };
  };
}
