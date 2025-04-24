{...}: {
  programs.waybar = {
    enable = true;
    systemd.enable = true;
    settings = {
      mainBar = {
        output = "DP-1";
        layer = "top";
        height = 20;
        spacing = 10;
        modules-left = [
          "hyprland/workspaces"
        ];
        modules-center = [
          "clock"
        ];
        modules-right = [
          "mpris"
          "privacy"
          "tray"
        ];

        "hyprland/workpaces" = {
          format = "{icon}";
          format-icons = {
            active = "󰪥";
            empty = "";
            urgent = "󰀨";
            default = "";
          };
        };
        "clock" = {
          format = "{:%H:%M}";
          tooltip-format = "{:%Y-%m-%d}";
        };
        "mpris" = {
          player = "cider";
          format = "{artist} - {title}";
          max-length = 80;
          interval = 1;
        };
        "tray" = {
          "icon-size" = 24;
          "spacing" = 4;
        };
      };
    };
  };
}
