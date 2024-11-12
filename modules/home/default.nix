{inputs, username, host, ...}: {
  imports =
       [(import ./catppuccin.nix)]                # Automatic Catppuccin theming
    ++ [(import ./git.nix)]                       # version control
    ++ [(import ./gtk.nix)]                       # gtk theme
    ++ [(import ./nvim.nix)]                      # neovim editor
    ++ [(import ./mpv.nix)]                       # video player
    ++ [(import ./packages.nix)]                  # other packages
    ++ [(import ./terminal.nix)];  
}
