{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  programs.firefox.enable = true;
  programs.steam.enable = true;
  programs.gamemode.enable = true;
  programs.zsh.enable = true;

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
  ];
}
