{
  imports = [
    ./plugins/plugins.nix
    ./keymaps.nix
    ./opts.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    colorschemes.catppuccin.enable = true;
  };
}
