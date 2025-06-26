{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./packages.nix
      ./modules/bundle.nix
    ];

  boot.kernelPackages = pkgs.linuxPackages;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  time.timeZone = "Europe/Kyiv";

  # PLASMA ENVIRONMENT
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  # GNOME ENVIRONMENT
  # services.displayManager.gdm.enable = true;
  # services.desktopManager.gnome.enable = true;

  services.printing.enable = true;

  system.stateVersion = "25.05";

}
