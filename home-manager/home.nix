{ config, pkgs, ... }:

{
  imports = [
    ./zsh.nix
    ./modules/nixvim/nixvim.nix
  ];

  home.username = "f1rtxz";
  home.homeDirectory = "/home/f1rtxz";
  home.stateVersion = "25.05";
  programs.home-manager.enable = true;

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  home.packages = with pkgs; [
    ripgrep
    fastfetch
    htop
    stylua
    prettier
    black
    nixpkgs-fmt
  ];
}

