{ config, pkgs, ... }:

{
  imports = [
    ./zsh.nix
    ./modules/nixvim.nix
  ];

  home.username = "f1rtxz";
  home.homeDirectory = "/home/f1rtxz";
  home.stateVersion = "25.05";
  programs.home-manager.enable = true;
}

