{ ... }:

{
  imports = [
    # Browsers
    # ./browsers/firefox.nix
    ./browsers/zen-browser.nix
    ./browsers/qutebrowser.nix

    # Games
    ./games/steam.nix

    # Window Managers
    # ./wms/hyprland.nix

    # Theming
    ./theme-stuff/themes.nix
    ./theme-stuff/fonts.nix
    ./theme-stuff/vivid.nix

    # Terminal Tools
    ./terminal/foot.nix
    # ./terminal/wezterm.nix
    ./terminal/zsh.nix
    # ./terminal/fish.nix
    # ./terminal/starship.nix
    # ./terminal/helix.nix
    ./terminal/git.nix
    # ./terminal/cli-tools.nix
    ./terminal/yazi.nix

    # Misc
    # ./misc/display-manager.nix
    # ./misc/thunar.nix
    ./misc/vesktop.nix
    ./misc/cider.nix
    # ./misc/lsp.nix
  ];
}
