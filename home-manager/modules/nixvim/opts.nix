{
  programs.nixvim = {
    clipboard = {
      register = "unnamedplus";
      providers.wl-copy.enable = true;
    };

    opts = {
      relativenumber = true;

      foldmethod = "manual";
      foldenable = true;

      tabstop = 2;
      shiftwidth = 2;
      expandtab = true;
    };
  };
}
