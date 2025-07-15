{ inputs, pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  programs.firefox.enable = true;
  programs.steam.enable = true;
  programs.gamemode.enable = true;
  programs.zsh.enable = true;
  programs.kdeconnect.enable = true;
  programs.direnv.enable = true;

  services.flatpak.enable = true;

  environment.systemPackages = with pkgs; [
    neovim
    wget
    home-manager
    polychromatic
    heroic
    openrazer-daemon
    git
    gcc
    python3
    protonup-qt
    bottles
    gnome-extension-manager
    gnome-tweaks
    telegram-desktop
    viber
    discord
    obs-studio
    github-desktop
    kitty
    cmake
    meson
    ninja
    sdl3
    inputs.kwin-effects-forceblur.packages.${pkgs.system}.default
    pavucontrol
  ];
}
