{ self, pkgs, lib, inputs, ...}: 
{
  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [ "nix-command" "flakes" ];
      substituters = [""];
      trusted-public-keys = [""];
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };
  chaotic.nyx.cache.enable = true;
  fonts.fontDir.enable = true;
  zramSwap.enable = true;
  systemd = {
    oomd.enable = true;
    enableCgroupAccounting = true;
  };
  services.btrfs.autoScrub = {
    enable = true;
    interval = "weekly";
    fileSystems = [ "/" ];
  };
  console.useXkbConfig = true;
  programs.dconf.enable = true;
  time.timeZone = "America/Sao_Paulo";
  i18n.defaultLocale = "en_US.UTF-8";
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "24.11";
}
