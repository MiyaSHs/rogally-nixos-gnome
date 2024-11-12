{ inputs, pkgs, lib, ... }:
{
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  services = {
    gnome = {
      games.enable = false;
    };
    xserver = {
      enable = true;
      desktopManager.gnome.enable = true;
      xkb = {
        layout = "us";
        variant = "colemak_dh_iso";
      };
    };
  };
}
