{ config, pkgs, username, inputs, ... }:
{
  jovian = {
    decky-loader.enable = true;
    steam = {
      enable = true;
      autoStart = true;
      desktopSession = "gnome";
      user = "${username}";
    };
    steamos.useSteamOSConfig = true;
    hardware.has.amd.gpu = true;
  };
  services.handheld-daemon.enable = true;
  services.handheld-daemon.user = "${username}";
}
