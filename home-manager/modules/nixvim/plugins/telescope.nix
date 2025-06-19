{
  programs.nixvim.plugins.telescope = {
    enable = true;

    keymaps = {
      "<C-p>" = "find_files";
      "<leader>fg" = "live_grep";
    };

    settings.defaults = {
      file_ignore_patterns = [
        "^.git/"
        "^.mypy_cache/"
        "^__pycache__/"
        "^output/"
        "^data/"
        "%.ipynb"
      ];
    };
  };
}
