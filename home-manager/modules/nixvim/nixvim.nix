{
  imports = [
    ./plugins
    ./keymaps.nix
    ./opts.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    colorschemes.catppuccin.enable = true;
  };
}
