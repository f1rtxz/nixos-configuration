{
  programs.nixvim.plugins = {
    treesitter = {
      enable = true;

      folding = true;
      settings = {
        indent.enable = true;
        highlight.enable = true;
        auto_install = true;
      };
    };

    treesitter-refactor = {
      enable = true;
      highlightDefinitions = {
        enable = true;
        clearOnCursorMove = false;
      };
    };
  };
}
