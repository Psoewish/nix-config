{...}: {
  programs = {
    hyfetch = {
      enable = true;
      settings = {
        preset = "biromantic1";
        mode = "rgb";
        light_dark = "dark";
        lightness = 0.65;
        color_align = {
          mode = "custom";
          custom_colors = {
            "1" = 1;
            "2" = 4;
          };
          fore_back = [];
        };
        backend = "fastfetch";
        args = null;
        distro = null;
        pride_month_shown = [];
        pride_month_disable = false;
      };
    };
    fastfetch.enable = true;
  };
}
