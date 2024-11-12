{ pkgs, ... }: 
{
  security.rtkit.enable = true;
  security.sudo.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };
  security.polkit.enable = true;
}
