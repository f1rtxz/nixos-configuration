{
  programs.nixvim = {
    globals = {
      mapleader = " ";
    };
    keymaps = [
      {
        action = ":Neotree toggle<CR>";
        key = "<C-n>";
        options = {
          silent = true;
          noremap = true;
        };
      }
    ];
  };
}
