{ config, pkgs, username, ... }:
{
  # Add user to libvirtd group
  users.users.${username}.extraGroups = [ "adbusers" ];
  
  # ADB
  programs.adb.enable = true;
  environment.systemPackages = [
    pkgs.gnirehtet
  ];
}
