{ inputs, pkgs, ... }: 
{
  home.packages = (with pkgs; [
    cmatrix
    spicetify-cli
    killall
    man-pages		              # extra man pages
    pamixer
    playerctl                         # controller for media players
    wl-clipboard                      # clipboard utils for wayland (wl-copy, wl-paste)
    unzip
    unrar
    appimage-run
    xdg-utils
    xorg.xeyes
    wineWowPackages.stagingFull
    dxvk
    vkd3d
    vulkan-tools
    wget
    mangohud
    gnome-software
  ]);
}
