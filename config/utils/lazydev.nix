{
  plugins.lazydev = {
    enable = true;
    settings = {
      library = [
        { path = "luvit-meta/library"; words = [ "vim%.uv" ]; }
      ];
    };
  };
}
