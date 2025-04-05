{
  pkgs,
  config,
  ...
}: let
  wallpaper_dir = "~/nix-config/wallpapers";
  theme = "rose-pine";
  # Some example themes:
  # rose-pine, everforest, ayu-dark, ayu-mirage, catppuccin-mocha, dracula, gruvbox-dark-hard, nord, tokyo-night-dark
in {
  stylix = {
    enable = true;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/${theme}.yaml";

    cursor.package = pkgs.bibata-cursors;
    cursor.name = "Bibata-Modern-Ice";
    cursor.size = 24;

    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.caskaydia-cove;
        name = "CaskaydiaCove Nerd Font";
      };
      sansSerif = {
        package = pkgs.roboto;
        name = "Roboto";
      };
      # serif = config.stylix.fonts.monospace;
      serif = config.stylix.fonts.sansSerif;
      emoji = {
        package = pkgs.nerd-fonts.symbols-only;
        name = "SymbolsOnly Nerd Font";
      };

      sizes = {
        applications = 12;
        terminal = 12;
        popups = 12;
        desktop = 12;
      };
    };

    image = "${wallpaper_dir}/anime-wallpaper-night.jpg";

    opacity.terminal = 0.8;
  };
}
