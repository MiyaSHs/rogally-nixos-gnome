{ pkgs, ... }:
{
  fonts.fontconfig.enable = true;
  home.packages = [
    pkgs.nerdfonts
    pkgs.twemoji-color-font
    pkgs.noto-fonts-emoji
    pkgs.font-awesome
  ];
  
  home.pointerCursor = {
    size = 24;
    gtk.enable = true;
    x11.enable = true;
  };
  catppuccin.pointerCursor.enable = true;

  gtk = {
    enable = true;
    catppuccin = {
      enable = true;
      icon.enable = true;
      gnomeShellTheme = true;
    };

    font = {
      name = "CaskaydiaCove Nerd Font";
      size = 11;
    };
  };

  qt = {
    enable = true;
    platformTheme.name = "kvantum";
    style = {
      name = "kvantum";
      catppuccin = {
        enable = true;
	apply = true;
      };
    };
  };
}
