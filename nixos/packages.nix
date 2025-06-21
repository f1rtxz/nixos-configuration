{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  programs.firefox.enable = true;
  programs.steam.enable = true;
  programs.gamemode.enable = true;
  programs.zsh.enable = true;

  services.flatpak.enable = true;

  environment.systemPackages = with pkgs; [
    neovim
    wget
    ghostty
    home-manager
    polychromatic
    heroic
    openrazer-daemon
    git
    gcc
    python3
    direnv
    flatpak
    protonup-qt
  ];
}
