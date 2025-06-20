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
      {
        action = ":MoltenInit<CR>";
        key = "<leader>mi";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        action = ":MoltenEvaluateLine<CR>";
        key = "<leader>el";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        action = ":MoltenEvaluateVisual<CR>";
        key = "<leader>ev";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        action = ":MoltenEvaluateOperator<CR>";
        ket = "<leader>e";
      }
    ];
  };
}
