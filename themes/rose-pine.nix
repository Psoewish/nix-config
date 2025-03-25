{ pkgs, config, ... }:

{
  stylix = {
    enable = true;

    base16Scheme = {
      base00 = "191724";
      base01 = "1f1d2e";
      base02 = "26233a";
      base03 = "6e6a86";
      base04 = "908caa";
      base05 = "e0def4";
      base06 = "e0def4";
      base07 = "524f67";
      base08 = "eb6f92";
      base09 = "f6c177";
      base0A = "ebbcba";
      base0B = "31748f";
      base0C = "9ccfd8";
      base0D = "c4a7e7";
      base0E = "f6c177";
      base0F = "524f67";
    };

    cursor.package = pkgs.bibata-cursors;
    cursor.name = "Bibata-Modern-Ice";
    cursor.size = 24;

    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.caskaydia-cove;
        name = "CaskaydiaCove Nerd Font";
      };
      serif = {
        package = pkgs.roboto;
        name = "Inter";
      };
      # serif = config.stylix.fonts.monospace;
      sansSerif = config.stylix.fonts.serif;
      emoji = config.stylix.fonts.monospace;

      sizes = {
        applications = 12;
        terminal = 12;
        popups = 12;
        desktop = 12;
      };
    };

    image = ./wallpapers/anime-wallpaper-night.jpg;

    opacity.terminal = 0.8;
  };
}
