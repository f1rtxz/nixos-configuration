{ pkgs, ... }: {
    users.users.f1rtxz = {
    isNormalUser = true;
    description = "Anton Haidai";
    extraGroups = [ "networkmanager" "wheel" "plugdev" "openrazer" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      kdePackages.kate
    #  thunderbird
    ];
  };
}
