{
  services.xserver.enable = true;
  services.xserver.videoDrivers = [ "nvidia" ];
  services.xserver.xkb = {
    layout = "us, ua, ru";
    variant = "workman, ";
    options = "grp:win_space_toggle";
  };
}
