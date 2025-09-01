{
  services.xserver.enable = true;
  services.xserver.videoDrivers = [ "amdgpu" "nvidia" ];
  services.xserver.xkb = {
    layout = "us, ua, ru";
    variant = "";
    options = "grp:win_space_toggle";
  };
}
