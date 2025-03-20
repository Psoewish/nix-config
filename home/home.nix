{ ... }:

{
  home.username = "psoewish";
  home.homeDirectory = "/home/psoewish";

  imports = [
    ../themes/rose-pine.nix
  ];

  home.file = {
    ".config/btop" = {
      source = ./btop;
      recursive = true;
      force = true;
    };
    ".config/dunst" = {
      source = ./dunst;
      recursive = true;
      force = true;
    };
    ".config/fish" = {
      source = ./fish;
      recursive = true;
      force = true;
    };
    ".config/foot" = {
      source = ./foot;
      recursive = true;
      force = true;
    };
    ".config/helix" = {
      source = ./helix;
      recursive = true;
      force = true;
    };
    ".config/hypr" = {
      source = ./hypr;
      recursive = true;
      force = true;
    };
    ".config/qutebrowser" = {
      source = ./qutebrowser;
      recursive = true;
      force = true;
    };
    ".config/rofi" = {
      source = ./rofi;
      recursive = true;
      force = true;
    };
    # ".config/starship.toml" = {
    #   source = ./starship/starship.toml;
    #   recursive = true;
    #   force = true;
    # };
    ".config/waybar" = {
      source = ./waybar;
      recursive = true;
      force = true;
    };
    ".config/yazi" = {
      source = ./yazi;
      recursive = true;
      force = true;
    };
    ".config/zellij" = {
      source = ./zellij;
      recursive = true;
      force = true;
    };
  };

  home.sessionVariables = {
    EDITOR = "hx";
    VISUAL = "zed";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  home.stateVersion = "24.11";
}
